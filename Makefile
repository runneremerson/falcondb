$(shell sh build.sh 1>&2)
include build_config.mk



all:
	cd "${ROCKSDB_PATH}"; ${MAKE} shared_lib
	#cd falcondb/; ${MAKE}
	#cd test/; ${MAKE}

clean:
	rm -f *.a
	#cd falcondb/; ${MAKE} clean
	#cd test/; ${MAKE} clean

clean_all: clean
	cd "${ROCKSDB_PATH}"; ${MAKE} clean
	rm -f ${JEMALLOC_PATH}/Makefile
	cd "${SNAPPY_PATH}"; ${MAKE} clean
	rm -f ${SNAPPY_PATH}/Makefile