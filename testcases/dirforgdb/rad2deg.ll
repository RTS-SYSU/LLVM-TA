; ModuleID = '/workspaces/llvmta/testcases/test/rad2deg.c'
source_filename = "/workspaces/llvmta/testcases/test/rad2deg.c"
target datalayout = "e-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armv4t-unknown-unknown"

@rad2deg_X = dso_local global float 0.000000e+00, align 4
@rad2deg_Y = dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_init() #0 !dbg !12 {
entry:
  store float 0.000000e+00, float* @rad2deg_X, align 4, !dbg !16
  store float 0.000000e+00, float* @rad2deg_Y, align 4, !dbg !17
  ret void, !dbg !18
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc i32 @rad2deg_return() #0 !dbg !19 {
entry:
  %retval = alloca i32, align 4
  %temp = alloca i32, align 4
  %0 = load float, float* @rad2deg_Y, align 4, !dbg !20
  %conv = fptosi float %0 to i32, !dbg !20
  store i32 %conv, i32* %temp, align 4, !dbg !21
  %1 = load i32, i32* %temp, align 4, !dbg !22
  %cmp = icmp eq i32 %1, 64620, !dbg !23
  br i1 %cmp, label %if.then, label %if.else, !dbg !22

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !24
  br label %return, !dbg !24

if.else:                                          ; preds = %entry
  store i32 -1, i32* %retval, align 4, !dbg !25
  br label %return, !dbg !25

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, i32* %retval, align 4, !dbg !26
  ret i32 %2, !dbg !26
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg_main() #0 !dbg !27 {
entry:
  store float 0.000000e+00, float* @rad2deg_X, align 4, !dbg !28
  br label %for.cond, !dbg !29

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load float, float* @rad2deg_X, align 4, !dbg !30
  %cmp = fcmp ole float %0, 0x40191EB8A0000000, !dbg !31
  br i1 %cmp, label %for.body, label %for.end, !dbg !32

for.body:                                         ; preds = %for.cond
  %1 = load float, float* @rad2deg_X, align 4, !dbg !33
  %mul = fmul float %1, 1.800000e+02, !dbg !33
  %div = fdiv float %mul, 0x40091EB860000000, !dbg !33
  %2 = load float, float* @rad2deg_Y, align 4, !dbg !34
  %add = fadd float %2, %div, !dbg !34
  store float %add, float* @rad2deg_Y, align 4, !dbg !34
  br label %for.inc, !dbg !35

for.inc:                                          ; preds = %for.body
  %3 = load float, float* @rad2deg_X, align 4, !dbg !36
  %add1 = fadd float %3, 0x3F91DCF4E0000000, !dbg !36
  store float %add1, float* @rad2deg_X, align 4, !dbg !36
  br label %for.cond, !dbg !32, !llvm.loop !37

for.end:                                          ; preds = %for.cond
  ret void, !dbg !39
}

; Function Attrs: noinline nounwind
define dso_local arm_aapcs_vfpcc void @rad2deg(i8* noundef %n) #0 !dbg !40 {
entry:
  %n.addr = alloca i8*, align 4
  store i8* %n, i8** %n.addr, align 4
  call arm_aapcs_vfpcc void @rad2deg_init() #1, !dbg !41
  call arm_aapcs_vfpcc void @rad2deg_main() #1, !dbg !42
  %call = call arm_aapcs_vfpcc i32 @rad2deg_return() #1, !dbg !43
  ret void, !dbg !44
}

attributes #0 = { noinline nounwind "frame-pointer"="all" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="arm7tdmi" "target-features"="+armv4t,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" }
attributes #1 = { nobuiltin "no-builtins" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10}
!llvm.ident = !{!11}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 14.0.6", isOptimized: false, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "/workspaces/llvmta/testcases/test/rad2deg.c", directory: "/workspaces/llvmta/testcases/dirforgdb", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 1, !"branch-target-enforcement", i32 0}
!7 = !{i32 1, !"sign-return-address", i32 0}
!8 = !{i32 1, !"sign-return-address-all", i32 0}
!9 = !{i32 1, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"frame-pointer", i32 2}
!11 = !{!"clang version 14.0.6"}
!12 = distinct !DISubprogram(name: "rad2deg_init", scope: !13, file: !13, line: 47, type: !14, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!13 = !DIFile(filename: "test/rad2deg.c", directory: "/workspaces/llvmta/testcases", checksumkind: CSK_MD5, checksum: "401150ecf0d17ef01b67b50e09624238")
!14 = !DISubroutineType(types: !15)
!15 = !{}
!16 = !DILocation(line: 48, column: 13, scope: !12)
!17 = !DILocation(line: 49, column: 13, scope: !12)
!18 = !DILocation(line: 50, column: 1, scope: !12)
!19 = distinct !DISubprogram(name: "rad2deg_return", scope: !13, file: !13, line: 56, type: !14, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!20 = !DILocation(line: 57, column: 14, scope: !19)
!21 = !DILocation(line: 57, column: 7, scope: !19)
!22 = !DILocation(line: 59, column: 7, scope: !19)
!23 = !DILocation(line: 59, column: 12, scope: !19)
!24 = !DILocation(line: 60, column: 5, scope: !19)
!25 = !DILocation(line: 62, column: 5, scope: !19)
!26 = !DILocation(line: 63, column: 1, scope: !19)
!27 = distinct !DISubprogram(name: "rad2deg_main", scope: !13, file: !13, line: 69, type: !14, scopeLine: 69, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!28 = !DILocation(line: 70, column: 55, scope: !27)
!29 = !DILocation(line: 70, column: 45, scope: !27)
!30 = !DILocation(line: 71, column: 45, scope: !27)
!31 = !DILocation(line: 71, column: 55, scope: !27)
!32 = !DILocation(line: 70, column: 40, scope: !27)
!33 = !DILocation(line: 73, column: 20, scope: !27)
!34 = !DILocation(line: 73, column: 17, scope: !27)
!35 = !DILocation(line: 73, column: 7, scope: !27)
!36 = !DILocation(line: 72, column: 55, scope: !27)
!37 = distinct !{!37, !32, !33, !38}
!38 = !{!"llvm.loop.mustprogress"}
!39 = !DILocation(line: 74, column: 1, scope: !27)
!40 = distinct !DISubprogram(name: "rad2deg", scope: !13, file: !13, line: 76, type: !14, scopeLine: 76, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !15)
!41 = !DILocation(line: 77, column: 3, scope: !40)
!42 = !DILocation(line: 78, column: 3, scope: !40)
!43 = !DILocation(line: 79, column: 3, scope: !40)
!44 = !DILocation(line: 80, column: 1, scope: !40)