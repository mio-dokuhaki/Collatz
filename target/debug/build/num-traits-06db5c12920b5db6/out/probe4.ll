; ModuleID = 'probe4.a50c6dddf0fe20f5-cgu.0'
source_filename = "probe4.a50c6dddf0fe20f5-cgu.0"
target datalayout = "e-m:o-i64:64-i128:128-n32:64-S128"
target triple = "arm64-apple-macosx11.0.0"

@alloc_633f3e93f3d8c6a3b5158b56ac5107cd = private unnamed_addr constant <{ [75 x i8] }> <{ [75 x i8] c"/rustc/97c81e1b537088f1881c8894ee8579812ed9b6d1/library/core/src/num/mod.rs" }>, align 1
@alloc_d731fb55e08706b6e3fba925967b0ace = private unnamed_addr constant <{ ptr, [16 x i8] }> <{ ptr @alloc_633f3e93f3d8c6a3b5158b56ac5107cd, [16 x i8] c"K\00\00\00\00\00\00\00v\04\00\00\05\00\00\00" }>, align 8
@str.0 = internal constant [25 x i8] c"attempt to divide by zero"

; probe4::probe
; Function Attrs: uwtable
define void @_ZN6probe45probe17he16c2440a9146a77E() unnamed_addr #0 {
start:
  %0 = call i1 @llvm.expect.i1(i1 false, i1 false)
  br i1 %0, label %panic.i, label %"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h5971d8e532609dd7E.exit"

panic.i:                                          ; preds = %start
; call core::panicking::panic
  call void @_ZN4core9panicking5panic17h94828e14cd44a9a9E(ptr align 1 @str.0, i64 25, ptr align 8 @alloc_d731fb55e08706b6e3fba925967b0ace) #3
  unreachable

"_ZN4core3num21_$LT$impl$u20$u32$GT$10div_euclid17h5971d8e532609dd7E.exit": ; preds = %start
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.expect.i1(i1, i1) #1

; core::panicking::panic
; Function Attrs: cold noinline noreturn uwtable
declare void @_ZN4core9panicking5panic17h94828e14cd44a9a9E(ptr align 1, i64, ptr align 8) unnamed_addr #2

attributes #0 = { uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #2 = { cold noinline noreturn uwtable "frame-pointer"="non-leaf" "target-cpu"="apple-m1" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{!"rustc version 1.75.0-nightly (97c81e1b5 2023-10-07)"}
