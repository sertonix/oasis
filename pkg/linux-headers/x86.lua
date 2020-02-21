return {
	-- <cd src/arch/x86/include/uapi && find * -name '*.h' -exec printf "\t'%s',\n" {} + | LC_COLLATE=C sort
	'asm/a.out.h',
	'asm/auxvec.h',
	'asm/bitsperlong.h',
	'asm/boot.h',
	'asm/bootparam.h',
	'asm/byteorder.h',
	'asm/debugreg.h',
	'asm/e820.h',
	'asm/hw_breakpoint.h',
	'asm/hwcap2.h',
	'asm/ist.h',
	'asm/kvm.h',
	'asm/kvm_para.h',
	'asm/kvm_perf.h',
	'asm/ldt.h',
	'asm/mce.h',
	'asm/mman.h',
	'asm/msgbuf.h',
	'asm/msr.h',
	'asm/mtrr.h',
	'asm/perf_regs.h',
	'asm/posix_types.h',
	'asm/posix_types_32.h',
	'asm/posix_types_64.h',
	'asm/posix_types_x32.h',
	'asm/prctl.h',
	'asm/processor-flags.h',
	'asm/ptrace-abi.h',
	'asm/ptrace.h',
	'asm/sembuf.h',
	'asm/setup.h',
	'asm/shmbuf.h',
	'asm/sigcontext.h',
	'asm/sigcontext32.h',
	'asm/siginfo.h',
	'asm/signal.h',
	'asm/stat.h',
	'asm/statfs.h',
	'asm/svm.h',
	'asm/swab.h',
	'asm/ucontext.h',
	'asm/unistd.h',
	'asm/vm86.h',
	'asm/vmx.h',
	'asm/vsyscall.h',
	unistd={
		{
			dst='unistd_32.h',
			src='arch/x86/entry/syscalls/syscall_32.tbl',
			abi='i386',
		},
		{
			dst='unistd_x32.h',
			src='arch/x86/entry/syscalls/syscall_64.tbl',
			abi='common|x32',
			off='__X32_SYSCALL_BIT',
		},
		{
			dst='unistd_64.h',
			src='arch/x86/entry/syscalls/syscall_64.tbl',
			abi='common|64',
		},
	},
}