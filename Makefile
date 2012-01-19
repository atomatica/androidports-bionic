default:
	- bash -c "source ../../aosp/build/envsetup.sh; \
	cd ../../aosp; \
	mv bionic/libc /tmp/; \
	cp -a ../androidports/bionic/libc bionic/; \
	lunch full_toro-userdebug; \
	make -j16 OUT_DIR="../androidports/out" libc; \
	rm -rf bionic/libc; \
	mv /tmp/libc bionic/"
