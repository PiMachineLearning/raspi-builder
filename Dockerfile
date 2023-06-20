FROM pimachinelearning/raspi-python:3.9.16

# cmake from pip is kinda cursed, but pip does have the latest version
RUN python3.9 -m pip install cmake

RUN wget https://github.com/llvm/llvm-project/archive/refs/tags/llvmorg-16.0.5.tar.gz && tar -zxf llvmorg-16.0.5.tar.gz && cd llvm-project-llvmorg-16.0.5 && mkdir build && cd build && cmake -DLLVM_ENABLE_PROJECTS=clang -DCMAKE_BUILD_TYPE=Release -G "Unix Makefiles" ../llvm && make -j$(nproc) && make install

CMD ["/bin/bash"]
