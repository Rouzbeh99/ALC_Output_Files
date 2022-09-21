; ModuleID = 'compiled.ll'
source_filename = "testCase.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable
define dso_local void @foo(ptr nocapture noundef readonly %a, ptr nocapture noundef readonly %b, ptr nocapture noundef writeonly %c) local_unnamed_addr #0 !dbg !14 {
entry:
  %0 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !23
  %1 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %0, ptr %a), !dbg !23
  %2 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1> %0, ptr %b), !dbg !23
  %3 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %0, <vscale x 4 x i32> %1, <vscale x 4 x i32> %2), !dbg !23
  call void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32> %3, <vscale x 4 x i1> %0, ptr %c), !dbg !23
  ret void, !dbg !23

func.body:                                        ; No predecessors!
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #2 !dbg !24 {
entry:
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #8, !dbg !49, !srcloc !50
  call void @llvm.dbg.value(metadata i32 4, metadata !28, metadata !DIExpression()), !dbg !51
  %vla29 = alloca [4 x i32], align 4, !dbg !52
  call void @llvm.dbg.value(metadata i64 4, metadata !29, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %vla29, metadata !31, metadata !DIExpression()), !dbg !53
  %vla130 = alloca [4 x i32], align 4, !dbg !54
  call void @llvm.dbg.value(metadata i64 4, metadata !35, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %vla130, metadata !36, metadata !DIExpression()), !dbg !55
  %vla231 = alloca [4 x i32], align 4, !dbg !56
  call void @llvm.dbg.value(metadata i64 4, metadata !40, metadata !DIExpression()), !dbg !51
  call void @llvm.dbg.declare(metadata ptr %vla231, metadata !41, metadata !DIExpression()), !dbg !57
  call void @llvm.dbg.value(metadata i32 0, metadata !45, metadata !DIExpression()), !dbg !58
  %0 = getelementptr inbounds i8, ptr %vla231, i64 4, !dbg !59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %0, i8 0, i64 12, i1 false), !dbg !59, !tbaa !62
  br label %for.body, !dbg !66

for.cond.cleanup:                                 ; preds = %for.body
  call void @llvm.dbg.value(metadata ptr %vla29, metadata !20, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata ptr %vla130, metadata !21, metadata !DIExpression()), !dbg !67
  call void @llvm.dbg.value(metadata ptr %vla231, metadata !22, metadata !DIExpression()), !dbg !67
  %1 = load i32, ptr %vla29, align 4, !dbg !69, !tbaa !62
  %2 = load i32, ptr %vla130, align 4, !dbg !70, !tbaa !62
  %add.i = add nsw i32 %2, %1, !dbg !71
  store i32 %add.i, ptr %vla231, align 4, !dbg !72, !tbaa !62
  call void @llvm.dbg.value(metadata i32 0, metadata !47, metadata !DIExpression()), !dbg !73
  call void @llvm.dbg.value(metadata i64 0, metadata !47, metadata !DIExpression()), !dbg !73
  %call39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.i), !dbg !74
  call void @llvm.dbg.value(metadata i64 1, metadata !47, metadata !DIExpression()), !dbg !73
  br label %for.body11.for.body11_crit_edge, !dbg !77

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !45, metadata !DIExpression()), !dbg !58
  %arrayidx = getelementptr inbounds i32, ptr %vla29, i64 %indvars.iv, !dbg !78
  %3 = trunc i64 %indvars.iv to i32, !dbg !79
  store i32 %3, ptr %arrayidx, align 4, !dbg !79, !tbaa !62
  %arrayidx4 = getelementptr inbounds i32, ptr %vla130, i64 %indvars.iv, !dbg !80
  store i32 %3, ptr %arrayidx4, align 4, !dbg !81, !tbaa !62
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !82
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !45, metadata !DIExpression()), !dbg !58
  %exitcond.not = icmp eq i64 %indvars.iv.next, 4, !dbg !83
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !66, !llvm.loop !84

for.cond.cleanup10:                               ; preds = %for.body11.for.body11_crit_edge
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #8, !dbg !88, !srcloc !89
  ret i32 0, !dbg !90

for.body11.for.body11_crit_edge:                  ; preds = %for.body11.for.body11_crit_edge, %for.cond.cleanup
  %indvars.iv.next3640 = phi i64 [ 1, %for.cond.cleanup ], [ %indvars.iv.next36, %for.body11.for.body11_crit_edge ]
  %arrayidx13.phi.trans.insert = getelementptr inbounds i32, ptr %vla231, i64 %indvars.iv.next3640
  %.pre = load i32, ptr %arrayidx13.phi.trans.insert, align 4, !dbg !91, !tbaa !62
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next3640, metadata !47, metadata !DIExpression()), !dbg !73
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %.pre), !dbg !74
  %indvars.iv.next36 = add nuw nsw i64 %indvars.iv.next3640, 1, !dbg !92
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next36, metadata !47, metadata !DIExpression()), !dbg !73
  %exitcond38.not = icmp eq i64 %indvars.iv.next36, 4, !dbg !93
  br i1 %exitcond38.not, label %for.cond.cleanup10, label %for.body11.for.body11_crit_edge, !dbg !77, !llvm.loop !94
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.nxv4i32(<vscale x 4 x i1>, ptr) #6

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.aarch64.sve.st1.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr nocapture) #7

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind willreturn uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "testCase.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Test_Generator Pass/test", checksumkind: CSK_MD5, checksum: "9ebce2e5df555f7ca91a1cb1694a1449")
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 1, !"wchar_size", i32 4}
!5 = !{i32 8, !"branch-target-enforcement", i32 0}
!6 = !{i32 8, !"sign-return-address", i32 0}
!7 = !{i32 8, !"sign-return-address-all", i32 0}
!8 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!9 = !{i32 7, !"PIC Level", i32 2}
!10 = !{i32 7, !"PIE Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{i32 7, !"frame-pointer", i32 1}
!13 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 4, type: !15, scopeLine: 4, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !19)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17}
!17 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !18, size: 64)
!18 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!19 = !{!20, !21, !22}
!20 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 4, type: !17)
!21 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 4, type: !17)
!22 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 4, type: !17)
!23 = !DILocation(line: 6, column: 1, scope: !14)
!24 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 8, type: !25, scopeLine: 8, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !27)
!25 = !DISubroutineType(types: !26)
!26 = !{!18}
!27 = !{!28, !29, !31, !35, !36, !40, !41, !45, !47}
!28 = !DILocalVariable(name: "n", scope: !24, file: !1, line: 10, type: !18)
!29 = !DILocalVariable(name: "__vla_expr0", scope: !24, type: !30, flags: DIFlagArtificial)
!30 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!31 = !DILocalVariable(name: "a", scope: !24, file: !1, line: 12, type: !32)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: !29)
!35 = !DILocalVariable(name: "__vla_expr1", scope: !24, type: !30, flags: DIFlagArtificial)
!36 = !DILocalVariable(name: "b", scope: !24, file: !1, line: 13, type: !37)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: !35)
!40 = !DILocalVariable(name: "__vla_expr2", scope: !24, type: !30, flags: DIFlagArtificial)
!41 = !DILocalVariable(name: "c", scope: !24, file: !1, line: 14, type: !42)
!42 = !DICompositeType(tag: DW_TAG_array_type, baseType: !18, elements: !43)
!43 = !{!44}
!44 = !DISubrange(count: !40)
!45 = !DILocalVariable(name: "i", scope: !46, file: !1, line: 16, type: !18)
!46 = distinct !DILexicalBlock(scope: !24, file: !1, line: 16, column: 5)
!47 = !DILocalVariable(name: "i", scope: !48, file: !1, line: 24, type: !18)
!48 = distinct !DILexicalBlock(scope: !24, file: !1, line: 24, column: 5)
!49 = !DILocation(line: 9, column: 5, scope: !24)
!50 = !{i64 119, i64 128}
!51 = !DILocation(line: 0, scope: !24)
!52 = !DILocation(line: 12, column: 5, scope: !24)
!53 = !DILocation(line: 12, column: 9, scope: !24)
!54 = !DILocation(line: 13, column: 5, scope: !24)
!55 = !DILocation(line: 13, column: 9, scope: !24)
!56 = !DILocation(line: 14, column: 5, scope: !24)
!57 = !DILocation(line: 14, column: 9, scope: !24)
!58 = !DILocation(line: 0, scope: !46)
!59 = !DILocation(line: 19, column: 14, scope: !60)
!60 = distinct !DILexicalBlock(scope: !61, file: !1, line: 16, column: 33)
!61 = distinct !DILexicalBlock(scope: !46, file: !1, line: 16, column: 5)
!62 = !{!63, !63, i64 0}
!63 = !{!"int", !64, i64 0}
!64 = !{!"omnipotent char", !65, i64 0}
!65 = !{!"Simple C/C++ TBAA"}
!66 = !DILocation(line: 16, column: 5, scope: !46)
!67 = !DILocation(line: 0, scope: !14, inlinedAt: !68)
!68 = distinct !DILocation(line: 22, column: 5, scope: !24)
!69 = !DILocation(line: 5, column: 12, scope: !14, inlinedAt: !68)
!70 = !DILocation(line: 5, column: 19, scope: !14, inlinedAt: !68)
!71 = !DILocation(line: 5, column: 17, scope: !14, inlinedAt: !68)
!72 = !DILocation(line: 5, column: 10, scope: !14, inlinedAt: !68)
!73 = !DILocation(line: 0, scope: !48)
!74 = !DILocation(line: 25, column: 9, scope: !75)
!75 = distinct !DILexicalBlock(scope: !76, file: !1, line: 24, column: 33)
!76 = distinct !DILexicalBlock(scope: !48, file: !1, line: 24, column: 5)
!77 = !DILocation(line: 24, column: 5, scope: !48)
!78 = !DILocation(line: 17, column: 9, scope: !60)
!79 = !DILocation(line: 17, column: 14, scope: !60)
!80 = !DILocation(line: 18, column: 9, scope: !60)
!81 = !DILocation(line: 18, column: 14, scope: !60)
!82 = !DILocation(line: 16, column: 28, scope: !61)
!83 = !DILocation(line: 16, column: 23, scope: !61)
!84 = distinct !{!84, !66, !85, !86, !87}
!85 = !DILocation(line: 20, column: 5, scope: !46)
!86 = !{!"llvm.loop.mustprogress"}
!87 = !{!"llvm.loop.unroll.disable"}
!88 = !DILocation(line: 27, column: 5, scope: !24)
!89 = !{i64 423, i64 432}
!90 = !DILocation(line: 30, column: 1, scope: !24)
!91 = !DILocation(line: 25, column: 23, scope: !75)
!92 = !DILocation(line: 24, column: 28, scope: !76)
!93 = !DILocation(line: 24, column: 23, scope: !76)
!94 = distinct !{!94, !77, !95, !86, !87}
!95 = !DILocation(line: 26, column: 5, scope: !48)
