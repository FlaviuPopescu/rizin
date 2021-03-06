OBJ_WASM=analysis_wasm.o
CFLAGS+=-I$(WASM_ROOT)

STATIC_OBJ+=${OBJ_WASM}
TARGET_WASM=analysis_wasm.${EXT_SO}
# results in dupped symbol when building statically
#OBJ_WASM+=../../asm/arch/wasm/wasm.o

ALL_TARGETS+=${TARGET_WASM}

${TARGET_WASM}: ${OBJ_WASM}
	${CC} $(call libname,analysis_wasm) ${LDFLAGS} ${CFLAGS} -o analysis_wasm.${EXT_SO} ${OBJ_WASM}
