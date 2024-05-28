# pawsey amd toolchain
set(CMAKE_HIP_ARCHITECTURES gfx90a)
set(CMAKE_HIP_PLATFORM and)


#module load rocm/5.2.3 cmake/3.24.3 craype-accel-amd-gfx90a omnitrace/1.10.2 omniperf/1.0.6

#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${ROCM_PATH}/lib:${ROCM_PATH}/llvm/lib
#export LIBRARY_PATH=$LIBRARY_PATH:${ROCM_PATH}/lib:${ROCM_PATH}/llvm/lib

#export HIP_PLATFORM=amd
#export GPU_ARCH="gfx90a"

# Extra flags to enable GPU support
#MPICH_GPU_SUPPORT_ENABLED=1

# Any extra MPI libs here
#export MPI_EXTRA_LIBS="-L${CRAY_MPICH_ROOTDIR}/gtl/lib -lmpi_gtl_hsa"