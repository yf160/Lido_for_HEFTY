#ifndef PREDEFINE_H
#define PREDEFINE_H

#include <cmath>
#include <H5Cpp.h>
#include <string>
#include <iostream>
#include <vector>
#include <iomanip>
#include <sstream>
#include <fstream>
#include "lorentz.h"

extern char HS2PP[];
extern char HS2PPP[];
extern char HSS2PP[];

extern bool type1_warned;
extern bool type2_warned;
extern bool type3_warned;

//=============useful constants=============================================
extern const double c2pi;
extern const double c4d9;
extern const double c1d9;
extern const double c8pi;
extern const double c16pi;
extern const double c48pi;
extern const double c16pi2;
extern const double c72pi2;
extern const double c32pi3;
extern const double c64d9pi2;
extern const double c256pi4;
extern const double fmc_to_GeV_m1;
// number of color=3 (3*3-1 = 8 gluons), number of flavor=3, (u,d,s quark)
extern const int Nc, nf;
extern const double CF;
extern const double CA;
extern const double CF_over_CA;
extern const double TR;
extern int color_count;

// the prefractor for gluon debye mass with Boltzmann statistics
// mD^2 = 8\pi*(Nc+nf)*alpha_s*T^2 ~ 15*alpha_s*T^2
// Note that if using quantum statistics, this will be
// mD^2 = 4\pi/3*(Nc+nf/2)*alpha_s*T^2 ~ 18*alpha_s*T^2
extern const double pf_g; // prefractor for gluon self energy^2

// For QCD coupling constant
// alpha_s = alpha_0 = 4\pi/(11Nc/3-2Nf/3)/log(Q^2/LambdaQCD^2)
extern const double alpha0; // alpha_s(Q2 = e*Lambda2)
extern const double alpha_max; // alpha_s maximum cut
extern const double Lambda; // [GeV] Lambda QCD = 0.2 GeV
extern const double Lambda2; // [GeV^2] Lambda QCD squared
extern const double mu2_NP; // minimum cut on Q2, where alpha = alpha_0
extern double scale; // mu*pi*T
extern double afix; // fixed alphas, -1 is running
extern double cut; // separation between diffusion and scattering
extern double Lido_Ecut;
extern const double LPM_prefactor;
extern const double Mc;
extern const double Mb; 

void initialize_mD_and_scale(int _mD_type, double _mu, double _afix, double _theta, double _cut);
double alpha_s(double Q2, double T); //runing coupling
void echo(void);

class Debye_mass{
private:
        const double TL, TH;
        const size_t NT;
        const double dT;
        const unsigned int type;
        double * mD2;
public:
        Debye_mass(const unsigned int _type);
        ~Debye_mass(){delete[] mD2;};
        double get_mD2(double T);
};

class diffusion_table{
	private:
		const double TL, TH;
		const size_t NT;
		const double dT;
                const double pL,pH;
		const size_t Np;
		const double dp;

                std::vector<std::vector<double> > qhat_tab;		

	public:
		diffusion_table();
		void read(std::string filename);
		double get_qhat(double p, double T);

};

extern Debye_mass * t_channel_mD2;
extern diffusion_table * charm_diffusion_table, * bottom_diffusion_table;


// splitting function
double P_q2qg(double x);
double P_q2gq(double x);
double P_g2gg(double x);
double P_g2qqbar(double x);

double pid2mass(int pid);
fourvec put_on_shell(fourvec p, int pid);

// helper function for read/write hdf5 scalar attributes
template <typename T> inline const H5::PredType& type();
template <> inline const H5::PredType& type<size_t>() { return H5::PredType::NATIVE_HSIZE; }
template <> inline const H5::PredType& type<double>() { return H5::PredType::NATIVE_DOUBLE; }
template <> inline const H5::PredType& type<int>() { return H5::PredType::NATIVE_INT; }

template <typename T>
void hdf5_add_scalar_attr(
  const H5::Group& gp, const std::string& name, const T& value) {
  const auto& datatype = type<T>();
  auto attr = gp.createAttribute(name.c_str(), datatype, H5::DataSpace{});
  attr.write(datatype, &value);
}

template <typename T>
void hdf5_read_scalar_attr(
  const H5::Group& gp, const std::string& name, T& value) {
  const auto& datatype = type<T>();
  auto attr = gp.openAttribute(name.c_str());
  attr.read(datatype, &value);
}


bool is1to2(int prcid);
bool is2to2(int prcid);
bool is2to2_nlo(int prcid);
bool is_classical(int prcid);
bool is2to3(int prcid);
bool isPairProduction(int prcid);
void assign_1to2_pid(int process_id, 
                     int incoming_hard_id, 
                     std::vector<int> & pids);
void assign_2to2_pid(int process_id, 
                     int incoming_hard_id, 
                     std::vector<int> & pids);
void assign_2to3_pid(int process_id,
                     int incoming_hard_id, 
                     std::vector<int> & pids, 
                     bool forward);
void assign_2to2_color(int process_id, 
                       int pidA, int pid1, int pid2,
                       int Ca, int aCa,
                       int & C1, int & aC1,
                       int & C2, int & aC2
                       );
void assign_2to2_nlo_color(int process_id, 
                       int pidA, int pid1, int pid2, int pid3,
                       int Ca, int aCa,
                       int & C1, int & aC1,
                       int & C2, int & aC2,
                       int & C3, int & aC3
                       );
void assign_n2np1_color(
                       int pidA, int pid1, int pid2,
                       int Ca, int aCa,
                       int & C1, int & aC1,
                       int & C2, int & aC2
                       );

// Fortran style float format
class ff {
public:
    ff(double x): value(x) {}
    const double value;
	friend std::ostream & operator<< (std::ostream & stream, const ff & x) {
		// So that the log does not scream
		if (x.value == 0.) {
		    stream << "0.000000E+00";
		    return stream;
		}
		int exponent = floor(log10(std::abs(x.value)));
		double base = x.value / pow(10, exponent);
		// Transform here
		base /= 10;
		exponent += 1;
		if (base >= 0){
			std::stringstream buff;
			buff << std::setw(8) << std::setprecision(6);
			buff << std::fixed << base;
			stream << std::setw(8) << buff.str();
		}
		else{
			std::stringstream buff;
			buff << std::setw(8) << std::setprecision(6);
			buff << std::fixed << base;
			//Checking if we have a leading minus sign
			std::string newbase = "-" + buff.str().substr(2, buff.str().size()-1);
			stream << std::setw(8) << newbase;
		}
		
		if (exponent >= 0) stream << "E+" << std::setw(2) << std::setfill('0') << exponent;
		else stream << "E-" << std::setw(2) << std::setfill('0') << std::abs(exponent);
		return stream;
	}
};

bool is_file_exist(std::string fileName);
int get_process_info(std::string p,
std::vector<double> & _IM,
std::vector<double> & _FM,
std::vector<int> & _IT,
std::vector<int> & _FT);

struct particle{
	// mass, x, p, t, all in units of [GeV^a]
	int pid, col, acol;
	bool charged;
	double mass, weight, tau0, Q0, Q00;
	bool is_virtual;
	
	double T0, mfp0, Tf; // production temperature, local mfp
	coordinate x0; // production location
	coordinate x; // current location
	fourvec p0; // production momentum, after each radiation
	fourvec p; // current momentum
        fourvec mother_p;

	std::vector<std::vector<particle> > radlist;
	std::vector<double> vcell;

};

struct current{
    fourvec p;
    double etas;
};

particle make_parton(int pid, int col, int anticol, 
                     double scale, 
                     fourvec pmu, 
                     particle & mother,
                     double T, std::vector<double> vcell);
particle make_parton(int pid, int col, int acol, 
                     double scale, 
                     fourvec pmu, 
                     coordinate x
                     );
void formation_time(double & tauf, double & Q2,
           int idA, int idB, int idC,
           fourvec pA, fourvec pB, fourvec pC, 
           double T, fourvec p0);
double compute_realtime_to_propagate(double dt, coordinate x, fourvec p, int type);

void output_oscar(const std::vector<particle> plist,
                  int abspid, std::string fname);
#endif
