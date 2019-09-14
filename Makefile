TARGET_LIB = libpspmath.a
OBJS = \
	src/printMatrixFloat.o \
	src/vfpu_srand.o \
	src/vfpu_randf.o \
	src/vfpu_rand_8888.o \
	src/vfpu_identity_matrix.o \
	src/vfpu_translate_matrix.o \
	src/vfpu_perspective_matrix.o \
	src/vfpu_ortho_matrix.o \
	src/vfpu_sinf.o \
	src/vfpu_cosf.o \
	src/vfpu_tanf.o \
	src/vfpu_asinf.o \
	src/vfpu_acosf.o \
	src/vfpu_atanf.o \
	src/vfpu_sinhf.o \
	src/vfpu_coshf.o \
	src/vfpu_tanhf.o \
	src/vfpu_sincos.o \
	src/vfpu_expf.o \
	src/vfpu_logf.o \
	src/vfpu_fabsf.o \
	src/vfpu_sqrtf.o \
	src/vfpu_powf.o \
	src/vfpu_fmodf.o \
	src/vfpu_fminf.o \
	src/vfpu_fmaxf.o \
	src/vfpu_ease_in_out.o \
	src/vfpu_normalize_vector.o \
	src/vfpu_zero_vector.o \
	src/vfpu_scale_vector.o \
	src/vfpu_add_vector.o \
	src/vfpu_envmap_matrix.o \
	src/vfpu_sphere_to_cartesian.o \
	src/vfpu_quaternion_identity.o \
	src/vfpu_quaternion_copy.o \
	src/vfpu_quaternion_multiply.o \
	src/vfpu_quaternion_normalize.o \
	src/vfpu_quaternion_exp.o \
	src/vfpu_quaternion_ln.o \
	src/vfpu_quaternion_sample_linear.o \
	src/vfpu_quaternion_from_euler.o \
	src/vfpu_quaternion_to_matrix.o \
	src/vfpu_quaternion_sample_hermite.o \
	src/vfpu_quaternion_hermite_tangent.o

INCDIR = 
CFLAGS = -Os -G0 -Wall -iquote include
CXXFLAGS = $(CFLAGS) -fno-exceptions -fno-rtti
ASFLAGS = $(CFLAGS)

LIBDIR =
LDFLAGS =
LIBS=

PSPSDK=$(shell psp-config --pspsdk-path)
include $(PSPSDK)/lib/build.mak

install:
	cp $(TARGET_LIB) $(PSPSDK)/lib
	cp include/pspmath.h $(PSPSDK)/include
