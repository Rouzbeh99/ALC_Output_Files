; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #7, !dbg !28, !srcloc !29
  tail call void asm sideeffect ".inst 0x2520e020", ""() #7, !dbg !30, !srcloc !32
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !33
  %cmp11 = icmp sgt i32 %n, 0, !dbg !34
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !36

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !34
  %0 = call i64 @llvm.vscale.i64(), !dbg !36
  %1 = mul i64 %0, 4, !dbg !36
  %2 = icmp uge i64 %wide.trip.count, %1, !dbg !36
  br i1 %2, label %Pre.Vectorization, label %Preheader.for.remaining.iterations, !dbg !36

for.cond.cleanup.loopexit:                        ; preds = %middle.block, %for.inc
  br label %for.cond.cleanup, !dbg !37

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #7, !dbg !37, !srcloc !39
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #7, !dbg !40, !srcloc !41
  ret void, !dbg !42

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %23, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !25, metadata !DIExpression()), !dbg !33
  %rem15 = and i64 %indvars.iv, 1, !dbg !43
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !43
  br i1 %cmp1.not, label %for.inc, label %if.then, !dbg !46

if.then:                                          ; preds = %for.body
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !47
  %3 = load i32, ptr %arrayidx, align 4, !dbg !47, !tbaa !49
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !53
  %4 = load i32, ptr %arrayidx3, align 4, !dbg !53, !tbaa !49
  %mul = mul nsw i32 %4, %3, !dbg !54
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !55
  store i32 %mul, ptr %arrayidx5, align 4, !dbg !56, !tbaa !49
  br label %for.inc, !dbg !57

middle.block:                                     ; preds = %vectorizing.block
  %condition = icmp eq i64 %8, 0
  br i1 %condition, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

Pre.Vectorization:                                ; preds = %for.body.preheader
  %5 = call i64 @llvm.vscale.i64()
  %6 = mul i64 %5, 4
  %7 = call <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64()
  %8 = urem i64 %wide.trip.count, %6
  %total.iterations.to.be.vectorized = sub i64 %wide.trip.count, %8
  %9 = insertelement <vscale x 4 x i64> poison, i64 %6, i64 0
  %stepVector.update.values = shufflevector <vscale x 4 x i64> %9, <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer
  br label %vectorizing.block

vectorizing.block:                                ; preds = %vectorizing.block, %Pre.Vectorization
  %10 = phi i64 [ 0, %Pre.Vectorization ], [ %21, %vectorizing.block ]
  %11 = phi <vscale x 4 x i64> [ %7, %Pre.Vectorization ], [ %22, %vectorizing.block ]
  %12 = and <vscale x 4 x i64> %11, shufflevector (<vscale x 4 x i64> insertelement (<vscale x 4 x i64> poison, i64 1, i64 0), <vscale x 4 x i64> poison, <vscale x 4 x i32> zeroinitializer)
  %13 = icmp eq <vscale x 4 x i64> %12, zeroinitializer
  %14 = bitcast <vscale x 4 x i1> %13 to <vscale x 4 x i1>
  %negated.vector = xor <vscale x 4 x i1> %14, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %15 = getelementptr inbounds i32, ptr %a, i64 %10, !dbg !47
  %16 = getelementptr inbounds i32, ptr %b, i64 %10, !dbg !53
  %17 = getelementptr inbounds i32, ptr %c, i64 %10, !dbg !55
  %18 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %15, i32 16, <vscale x 4 x i1> %negated.vector, <vscale x 4 x i32> undef)
  %19 = call <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr %16, i32 16, <vscale x 4 x i1> %negated.vector, <vscale x 4 x i32> undef)
  %20 = mul <vscale x 4 x i32> %19, %18
  call void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32> %20, ptr %17, i32 16, <vscale x 4 x i1> %negated.vector)
  %21 = add i64 %6, %10
  %22 = add <vscale x 4 x i64> %11, %stepVector.update.values
  %terminate.condition = icmp uge i64 %21, %total.iterations.to.be.vectorized
  br i1 %terminate.condition, label %middle.block, label %vectorizing.block

Preheader.for.remaining.iterations:               ; preds = %middle.block, %for.body.preheader
  %23 = phi i64 [ 0, %for.body.preheader ], [ %21, %middle.block ]
  br label %for.body

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !58
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !25, metadata !DIExpression()), !dbg !33
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !34
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !36, !llvm.loop !59
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !63 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !67, metadata !DIExpression()), !dbg !89
  %vla30 = alloca [8192 x i32], align 4, !dbg !90
  call void @llvm.dbg.value(metadata i64 8192, metadata !68, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata ptr %vla30, metadata !70, metadata !DIExpression()), !dbg !91
  %vla131 = alloca [8192 x i32], align 4, !dbg !92
  call void @llvm.dbg.value(metadata i64 8192, metadata !74, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata ptr %vla131, metadata !75, metadata !DIExpression()), !dbg !93
  %vla232 = alloca [8192 x i32], align 4, !dbg !94
  call void @llvm.dbg.value(metadata i64 8192, metadata !79, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.declare(metadata ptr %vla232, metadata !80, metadata !DIExpression()), !dbg !95
  call void @llvm.dbg.value(metadata i32 0, metadata !84, metadata !DIExpression()), !dbg !96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla232, i8 0, i64 32768, i1 false), !dbg !97, !tbaa !49
  br label %for.body, !dbg !100

for.cond.cleanup:                                 ; preds = %for.body
  call void @foo(ptr noundef nonnull %vla30, ptr noundef nonnull %vla131, ptr noundef nonnull %vla232, i32 noundef 8192), !dbg !101
  call void @llvm.dbg.value(metadata i32 0, metadata !86, metadata !DIExpression()), !dbg !89
  call void @llvm.dbg.value(metadata i32 0, metadata !87, metadata !DIExpression()), !dbg !102
  br label %for.body11, !dbg !103

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %for.body ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !84, metadata !DIExpression()), !dbg !96
  %arrayidx = getelementptr inbounds i32, ptr %vla30, i64 %indvars.iv, !dbg !104
  %0 = trunc i64 %indvars.iv to i32, !dbg !105
  store i32 %0, ptr %arrayidx, align 4, !dbg !105, !tbaa !49
  %arrayidx4 = getelementptr inbounds i32, ptr %vla131, i64 %indvars.iv, !dbg !106
  store i32 2, ptr %arrayidx4, align 4, !dbg !107, !tbaa !49
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !108
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !84, metadata !DIExpression()), !dbg !96
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !109
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !100, !llvm.loop !110

for.cond.cleanup10:                               ; preds = %for.body11
  %add.lcssa = phi i32 [ %add, %for.body11 ], !dbg !112
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !115
  ret i32 0, !dbg !116

for.body11:                                       ; preds = %for.body11, %for.cond.cleanup
  %indvars.iv37 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next38, %for.body11 ]
  %sum.034 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body11 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv37, metadata !87, metadata !DIExpression()), !dbg !102
  call void @llvm.dbg.value(metadata i32 %sum.034, metadata !86, metadata !DIExpression()), !dbg !89
  %arrayidx13 = getelementptr inbounds i32, ptr %vla232, i64 %indvars.iv37, !dbg !117
  %1 = load i32, ptr %arrayidx13, align 4, !dbg !117, !tbaa !49
  %add = add nsw i32 %1, %sum.034, !dbg !112
  call void @llvm.dbg.value(metadata i32 %add, metadata !86, metadata !DIExpression()), !dbg !89
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1, !dbg !118
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next38, metadata !87, metadata !DIExpression()), !dbg !102
  %exitcond40.not = icmp eq i64 %indvars.iv.next38, 8192, !dbg !119
  br i1 %exitcond40.not, label %for.cond.cleanup10, label %for.body11, !dbg !103, !llvm.loop !120
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i64> @llvm.experimental.stepvector.nxv4i64() #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.masked.load.nxv4i32.p0(ptr, i32 immarg, <vscale x 4 x i1>, <vscale x 4 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv4i32.p0(<vscale x 4 x i32>, ptr, i32 immarg, <vscale x 4 x i1>) #6

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { argmemonly nofree nounwind willreturn writeonly }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #6 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #7 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "8b86cd2abeaf366a1aa6b0ce08e29bf5")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 6, type: !15, scopeLine: 6, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 6, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 6, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 6, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 6, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 10, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 8, column: 6, scope: !14)
!29 = !{i64 252, i64 261}
!30 = !DILocation(line: 9, column: 5, scope: !31)
!31 = distinct !DILexicalBlock(scope: !14, file: !1, line: 9, column: 5)
!32 = !{i64 2147612464}
!33 = !DILocation(line: 0, scope: !26)
!34 = !DILocation(line: 10, column: 23, scope: !35)
!35 = distinct !DILexicalBlock(scope: !26, file: !1, line: 10, column: 5)
!36 = !DILocation(line: 10, column: 5, scope: !26)
!37 = !DILocation(line: 15, column: 5, scope: !38)
!38 = distinct !DILexicalBlock(scope: !14, file: !1, line: 15, column: 5)
!39 = !{i64 2147612503}
!40 = !DILocation(line: 16, column: 5, scope: !14)
!41 = !{i64 463, i64 472}
!42 = !DILocation(line: 17, column: 1, scope: !14)
!43 = !DILocation(line: 11, column: 19, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 11, column: 13)
!45 = distinct !DILexicalBlock(scope: !35, file: !1, line: 10, column: 33)
!46 = !DILocation(line: 11, column: 13, scope: !45)
!47 = !DILocation(line: 12, column: 20, scope: !48)
!48 = distinct !DILexicalBlock(scope: !44, file: !1, line: 11, column: 25)
!49 = !{!50, !50, i64 0}
!50 = !{!"int", !51, i64 0}
!51 = !{!"omnipotent char", !52, i64 0}
!52 = !{!"Simple C/C++ TBAA"}
!53 = !DILocation(line: 12, column: 27, scope: !48)
!54 = !DILocation(line: 12, column: 25, scope: !48)
!55 = !DILocation(line: 12, column: 13, scope: !48)
!56 = !DILocation(line: 12, column: 18, scope: !48)
!57 = !DILocation(line: 13, column: 9, scope: !48)
!58 = !DILocation(line: 10, column: 28, scope: !35)
!59 = distinct !{!59, !36, !60, !61, !62}
!60 = !DILocation(line: 14, column: 5, scope: !26)
!61 = !{!"llvm.loop.mustprogress"}
!62 = !{!"llvm.loop.unroll.disable"}
!63 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 20, type: !64, scopeLine: 20, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !66)
!64 = !DISubroutineType(types: !65)
!65 = !{!19}
!66 = !{!67, !68, !70, !74, !75, !79, !80, !84, !86, !87}
!67 = !DILocalVariable(name: "n", scope: !63, file: !1, line: 22, type: !19)
!68 = !DILocalVariable(name: "__vla_expr0", scope: !63, type: !69, flags: DIFlagArtificial)
!69 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!70 = !DILocalVariable(name: "a", scope: !63, file: !1, line: 24, type: !71)
!71 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !72)
!72 = !{!73}
!73 = !DISubrange(count: !68)
!74 = !DILocalVariable(name: "__vla_expr1", scope: !63, type: !69, flags: DIFlagArtificial)
!75 = !DILocalVariable(name: "b", scope: !63, file: !1, line: 25, type: !76)
!76 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !77)
!77 = !{!78}
!78 = !DISubrange(count: !74)
!79 = !DILocalVariable(name: "__vla_expr2", scope: !63, type: !69, flags: DIFlagArtificial)
!80 = !DILocalVariable(name: "c", scope: !63, file: !1, line: 26, type: !81)
!81 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !82)
!82 = !{!83}
!83 = !DISubrange(count: !79)
!84 = !DILocalVariable(name: "i", scope: !85, file: !1, line: 28, type: !19)
!85 = distinct !DILexicalBlock(scope: !63, file: !1, line: 28, column: 5)
!86 = !DILocalVariable(name: "sum", scope: !63, file: !1, line: 37, type: !19)
!87 = !DILocalVariable(name: "i", scope: !88, file: !1, line: 39, type: !19)
!88 = distinct !DILexicalBlock(scope: !63, file: !1, line: 39, column: 5)
!89 = !DILocation(line: 0, scope: !63)
!90 = !DILocation(line: 24, column: 5, scope: !63)
!91 = !DILocation(line: 24, column: 9, scope: !63)
!92 = !DILocation(line: 25, column: 5, scope: !63)
!93 = !DILocation(line: 25, column: 9, scope: !63)
!94 = !DILocation(line: 26, column: 5, scope: !63)
!95 = !DILocation(line: 26, column: 9, scope: !63)
!96 = !DILocation(line: 0, scope: !85)
!97 = !DILocation(line: 31, column: 14, scope: !98)
!98 = distinct !DILexicalBlock(scope: !99, file: !1, line: 28, column: 33)
!99 = distinct !DILexicalBlock(scope: !85, file: !1, line: 28, column: 5)
!100 = !DILocation(line: 28, column: 5, scope: !85)
!101 = !DILocation(line: 35, column: 5, scope: !63)
!102 = !DILocation(line: 0, scope: !88)
!103 = !DILocation(line: 39, column: 5, scope: !88)
!104 = !DILocation(line: 29, column: 9, scope: !98)
!105 = !DILocation(line: 29, column: 14, scope: !98)
!106 = !DILocation(line: 30, column: 9, scope: !98)
!107 = !DILocation(line: 30, column: 14, scope: !98)
!108 = !DILocation(line: 28, column: 28, scope: !99)
!109 = !DILocation(line: 28, column: 23, scope: !99)
!110 = distinct !{!110, !100, !111, !61, !62}
!111 = !DILocation(line: 32, column: 5, scope: !85)
!112 = !DILocation(line: 40, column: 13, scope: !113)
!113 = distinct !DILexicalBlock(scope: !114, file: !1, line: 39, column: 33)
!114 = distinct !DILexicalBlock(scope: !88, file: !1, line: 39, column: 5)
!115 = !DILocation(line: 43, column: 5, scope: !63)
!116 = !DILocation(line: 47, column: 1, scope: !63)
!117 = !DILocation(line: 40, column: 16, scope: !113)
!118 = !DILocation(line: 39, column: 28, scope: !114)
!119 = !DILocation(line: 39, column: 23, scope: !114)
!120 = distinct !{!120, !103, !121, !61, !62}
!121 = !DILocation(line: 41, column: 5, scope: !88)
