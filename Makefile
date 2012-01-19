default:
	- bash -c "source ../../aosp/build/envsetup.sh; \
	cd ../../aosp; \
	mv bionic/libc /tmp/; \
	mv out/target/product/toro/system/lib/libc.so /tmp/; \
	cp -a ../androidports/bionic/libc bionic/; \
	lunch full_toro-userdebug; \
	make -j16 libc; \
	mv out/target/product/toro/system/lib/libc.so ../androidports/out/; \
	rm -rf bionic/libc; \
	mv /tmp/libc bionic/; \
	mv /tmp/libc.so out/target/product/toro/system/lib/"

