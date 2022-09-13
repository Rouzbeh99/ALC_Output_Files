; ModuleID = 'test.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@__const.main.a = private unnamed_addr constant [8 x i32] [i32 1, i32 -1, i32 2, i32 -2, i32 3, i32 -3, i32 4, i32 -4], align 4
@__const.main.b = private unnamed_addr constant [8 x i32] [i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2, i32 2], align 4
@.str = private unnamed_addr constant [4 x i8] c"%d \00", align 1

; Function Attrs: argmemonly nofree norecurse nosync nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef readonly %a, ptr noalias nocapture noundef readonly %b, ptr noalias nocapture noundef writeonly %c, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !21, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %b, metadata !22, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 %n, metadata !24, metadata !DIExpression()), !dbg !27
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !28
  %cmp11 = icmp sgt i32 %n, 0, !dbg !29
  br i1 %cmp11, label %for.body.preheader, label %for.cond.cleanup, !dbg !31

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !29
  br label %for.body.init.1

for.body.init.1:                                  ; preds = %for.body.preheader
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.1 = and i64 0, 1, !dbg !32
  %cmp1.not.init.1 = icmp eq i64 %rem15.init.1, 0, !dbg !32
  %indvars.iv.next.init.1 = add nuw nsw i64 0, 1, !dbg !35
  %rem15.headerCopy.1.init.1 = and i64 %indvars.iv.next.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.1 = icmp eq i64 %rem15.headerCopy.1.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.init.1 = add nuw nsw i64 %indvars.iv.next.init.1, 1, !dbg !35
  %rem15.headerCopy.1.2.init.1 = and i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.1 = icmp eq i64 %rem15.headerCopy.1.2.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.1, 1, !dbg !35
  %rem15.headerCopy.1.2.3.init.1 = and i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.1 = icmp eq i64 %rem15.headerCopy.1.2.3.init.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3.init.1 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.1, 1, !dbg !35
  br label %for.body.init.2

for.body.init.2:                                  ; preds = %for.body.init.1
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !32
  %cmp1.not.init.2 = icmp eq i64 %rem15.init.2, 0, !dbg !32
  %indvars.iv.next.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.3.init.1, 1, !dbg !35
  %rem15.headerCopy.1.init.2 = and i64 %indvars.iv.next.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.init.2 = icmp eq i64 %rem15.headerCopy.1.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.init.2 = add nuw nsw i64 %indvars.iv.next.init.2, 1, !dbg !35
  %rem15.headerCopy.1.2.init.2 = and i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.init.2 = icmp eq i64 %rem15.headerCopy.1.2.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.init.2, 1, !dbg !35
  %rem15.headerCopy.1.2.3.init.2 = and i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3.init.2 = icmp eq i64 %rem15.headerCopy.1.2.3.init.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3.init.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2.init.2, 1, !dbg !35
  %0 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.1, i64 0
  %1 = insertelement <vscale x 4 x i1> %0, i1 %cmp1.not.headerCopy.1.init.1, i64 1
  %2 = insertelement <vscale x 4 x i1> %1, i1 %cmp1.not.headerCopy.1.2.init.1, i64 2
  %3 = insertelement <vscale x 4 x i1> %2, i1 %cmp1.not.headerCopy.1.2.3.init.1, i64 3
  %4 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not.init.2, i64 0
  %5 = insertelement <vscale x 4 x i1> %4, i1 %cmp1.not.headerCopy.1.init.2, i64 1
  %6 = insertelement <vscale x 4 x i1> %5, i1 %cmp1.not.headerCopy.1.2.init.2, i64 2
  %7 = insertelement <vscale x 4 x i1> %6, i1 %cmp1.not.headerCopy.1.2.3.init.2, i64 3
  %8 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 0, i32 1)
  %9 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 4, i32 1)
  br label %for.body

epilogueBlock1:                                   ; preds = %for.body
  %10 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !36
  %11 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !38
  %12 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !39
  %13 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %10, <vscale x 4 x i32> %25)
  %14 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %26, ptr %11, <vscale x 4 x i32> %25)
  %15 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %14, <vscale x 4 x i32> %13)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %15, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  %16 = zext <vscale x 4 x i32> %25 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %25, <vscale x 4 x i1> %26, ptr %12, <vscale x 4 x i32> %25)
  br label %epilogueBlock2

epilogueBlock2:                                   ; preds = %epilogueBlock1
  %17 = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !36
  %18 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !38
  %19 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !39
  %20 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %17, <vscale x 4 x i32> %27)
  %21 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %28, ptr %18, <vscale x 4 x i32> %27)
  %22 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %21, <vscale x 4 x i32> %20)
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %22, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  %23 = zext <vscale x 4 x i32> %27 to <vscale x 4 x i64>
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %27, <vscale x 4 x i1> %28, ptr %19, <vscale x 4 x i32> %27)
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %epilogueBlock2, %entry
  ret void, !dbg !40

for.body:                                         ; preds = %for.body.init.2, %new.latch
  %24 = phi i64 [ %indvars.iv.next.latchCopy.1.2.3, %new.latch ], [ 8, %for.body.init.2 ]
  %25 = phi <vscale x 4 x i32> [ %78, %new.latch ], [ %8, %for.body.init.2 ]
  %26 = phi <vscale x 4 x i1> [ %79, %new.latch ], [ %3, %for.body.init.2 ]
  %27 = phi <vscale x 4 x i32> [ %80, %new.latch ], [ %9, %for.body.init.2 ]
  %28 = phi <vscale x 4 x i1> [ %81, %new.latch ], [ %7, %for.body.init.2 ]
  call void @llvm.dbg.value(metadata i64 0, metadata !25, metadata !DIExpression()), !dbg !28
  %rem15 = and i64 %24, 1, !dbg !32
  %cmp1.not = icmp eq i64 %rem15, 0, !dbg !32
  %indvars.iv.next = add nuw nsw i64 %24, 1, !dbg !35
  %rem15.headerCopy.1 = and i64 %indvars.iv.next, 1, !dbg !32
  %cmp1.not.headerCopy.1 = icmp eq i64 %rem15.headerCopy.1, 0, !dbg !32
  %indvars.iv.next.latchCopy.1 = add nuw nsw i64 %indvars.iv.next, 1, !dbg !35
  %rem15.headerCopy.1.2 = and i64 %indvars.iv.next.latchCopy.1, 1, !dbg !32
  %cmp1.not.headerCopy.1.2 = icmp eq i64 %rem15.headerCopy.1.2, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2 = add nuw nsw i64 %indvars.iv.next.latchCopy.1, 1, !dbg !35
  %rem15.headerCopy.1.2.3 = and i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !32
  %cmp1.not.headerCopy.1.2.3 = icmp eq i64 %rem15.headerCopy.1.2.3, 0, !dbg !32
  %indvars.iv.next.latchCopy.1.2.3 = add nuw nsw i64 %indvars.iv.next.latchCopy.1.2, 1, !dbg !35
  %29 = icmp uge i64 %indvars.iv.next.latchCopy.1.2.3, %wide.trip.count, !dbg !29
  br i1 %29, label %epilogueBlock1, label %permute.decision, !dbg !31, !llvm.loop !41

permute.decision:                                 ; preds = %for.body
  %30 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %31 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %26)
  %32 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %30, <vscale x 4 x i1> %28)
  %33 = add i64 %31, %32
  %34 = icmp uge i64 %33, 4
  br i1 %34, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %permute.decision
  %35 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4)
  %36 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %26, <vscale x 4 x i32> %25)
  %37 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %28, <vscale x 4 x i32> %27)
  %38 = xor <vscale x 4 x i1> %26, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %39 = xor <vscale x 4 x i1> %28, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %40 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %38, <vscale x 4 x i32> %25)
  %41 = call <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1> %39, <vscale x 4 x i32> %27)
  %42 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %26)
  %43 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %42)
  %44 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %43, <vscale x 4 x i32> %36, <vscale x 4 x i32> %37)
  %45 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %28)
  %46 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %45)
  %47 = call <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1> %46, <vscale x 4 x i32> %37, <vscale x 4 x i32> %41)
  %48 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %38)
  %49 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %48)
  %50 = call <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1> %49, <vscale x 4 x i32> %40, <vscale x 4 x i32> %47)
  %51 = xor <vscale x 4 x i1> %49, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %52 = call i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1> %35, <vscale x 4 x i1> %49)
  %53 = sub i64 %45, %48
  %54 = add i64 %53, %52
  %55 = call <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64 0, i64 %54)
  %56 = xor <vscale x 4 x i1> %55, shufflevector (<vscale x 4 x i1> insertelement (<vscale x 4 x i1> poison, i1 true, i32 0), <vscale x 4 x i1> poison, <vscale x 4 x i32> zeroinitializer)
  %57 = and <vscale x 4 x i1> %51, %55
  %58 = and <vscale x 4 x i1> %51, %55
  %59 = and <vscale x 4 x i1> %58, %56
  %60 = or <vscale x 4 x i1> %57, %59
  br label %if.then

linearized:                                       ; preds = %permute.decision
  %61 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false
  %62 = insertelement <vscale x 4 x i1> %61, i1 %cmp1.not.headerCopy.1, i1 true
  %63 = insertelement <vscale x 4 x i1> %62, i1 %cmp1.not.headerCopy.1.2, i1 false
  %64 = insertelement <vscale x 4 x i1> %63, i1 %cmp1.not.headerCopy.1.2.3, i1 true
  %65 = trunc i64 %24 to i32
  %66 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %65, i32 1)
  br label %new.latch

if.then:                                          ; preds = %lane.gather
  %arrayidx = getelementptr inbounds i32, ptr %a, i64 %24, !dbg !36
  %arrayidx3 = getelementptr inbounds i32, ptr %b, i64 %24, !dbg !38
  %arrayidx5 = getelementptr inbounds i32, ptr %c, i64 %24, !dbg !39
  %67 = call <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 4), !dbg !45
  %68 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %67, ptr %arrayidx, <vscale x 4 x i32> %44), !dbg !45
  %69 = call <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1> %67, ptr %arrayidx3, <vscale x 4 x i32> %44), !dbg !45
  %70 = call <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1> %67, <vscale x 4 x i32> %69, <vscale x 4 x i32> %68), !dbg !45
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %70, <vscale x 4 x i1> %67, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !45
  %71 = zext <vscale x 4 x i32> %44 to <vscale x 4 x i64>, !dbg !45
  call void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32> %44, <vscale x 4 x i1> %67, ptr %arrayidx5, <vscale x 4 x i32> %44), !dbg !45
  %72 = insertelement <vscale x 4 x i1> undef, i1 %cmp1.not, i1 false, !dbg !45
  %73 = insertelement <vscale x 4 x i1> %72, i1 %cmp1.not.headerCopy.1, i1 true, !dbg !45
  %74 = insertelement <vscale x 4 x i1> %73, i1 %cmp1.not.headerCopy.1.2, i1 false, !dbg !45
  %75 = insertelement <vscale x 4 x i1> %74, i1 %cmp1.not.headerCopy.1.2.3, i1 true, !dbg !45
  %76 = trunc i64 %24 to i32, !dbg !45
  %77 = call <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32 %76, i32 1), !dbg !45
  br label %new.latch, !dbg !45

new.latch:                                        ; preds = %linearized, %if.then
  %78 = phi <vscale x 4 x i32> [ %77, %if.then ], [ %25, %linearized ]
  %79 = phi <vscale x 4 x i1> [ %75, %if.then ], [ %26, %linearized ]
  %80 = phi <vscale x 4 x i32> [ %66, %linearized ], [ %27, %if.then ]
  %81 = phi <vscale x 4 x i1> [ %64, %linearized ], [ %60, %if.then ]
  br label %for.body
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #3 !dbg !46 {
entry:
  %c = alloca [8 x i32], align 4
  call void @llvm.dbg.value(metadata i32 8, metadata !50, metadata !DIExpression()), !dbg !59
  call void @llvm.dbg.declare(metadata ptr @__const.main.a, metadata !51, metadata !DIExpression()), !dbg !60
  call void @llvm.dbg.declare(metadata ptr @__const.main.b, metadata !55, metadata !DIExpression()), !dbg !61
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %c) #11, !dbg !62
  call void @llvm.dbg.declare(metadata ptr %c, metadata !56, metadata !DIExpression()), !dbg !63
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %c, i8 0, i64 32, i1 false), !dbg !63
  tail call void @llvm.experimental.noalias.scope.decl(metadata !64), !dbg !67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !68), !dbg !67
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70), !dbg !67
  call void @llvm.dbg.value(metadata ptr @__const.main.a, metadata !21, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr @__const.main.b, metadata !22, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata ptr %c, metadata !23, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 8, metadata !24, metadata !DIExpression()), !dbg !72
  call void @llvm.dbg.value(metadata i32 0, metadata !25, metadata !DIExpression()), !dbg !74
  br label %for.body.i, !dbg !75

for.body.i:                                       ; preds = %for.inc.i, %entry
  %indvars.iv.i = phi i64 [ 0, %entry ], [ %indvars.iv.next.i, %for.inc.i ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv.i, metadata !25, metadata !DIExpression()), !dbg !74
  %rem15.i = and i64 %indvars.iv.i, 1, !dbg !76
  %cmp1.not.i = icmp eq i64 %rem15.i, 0, !dbg !76
  br i1 %cmp1.not.i, label %for.inc.i, label %if.then.i, !dbg !77

if.then.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr inbounds i32, ptr @__const.main.a, i64 %indvars.iv.i, !dbg !78
  %0 = load i32, ptr %arrayidx.i, align 4, !dbg !78, !tbaa !79, !alias.scope !64, !noalias !83
  %arrayidx3.i = getelementptr inbounds i32, ptr @__const.main.b, i64 %indvars.iv.i, !dbg !84
  %1 = load i32, ptr %arrayidx3.i, align 4, !dbg !84, !tbaa !79, !alias.scope !68, !noalias !85
  %mul.i = mul nsw i32 %1, %0, !dbg !86
  %arrayidx5.i = getelementptr inbounds i32, ptr %c, i64 %indvars.iv.i, !dbg !87
  store i32 %mul.i, ptr %arrayidx5.i, align 4, !dbg !88, !tbaa !79, !alias.scope !70, !noalias !89
  br label %for.inc.i, !dbg !90

for.inc.i:                                        ; preds = %if.then.i, %for.body.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1, !dbg !91
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next.i, metadata !25, metadata !DIExpression()), !dbg !74
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 8, !dbg !92
  br i1 %exitcond.not.i, label %for.body.preheader, label %for.body.i, !dbg !75, !llvm.loop !93

for.body.preheader:                               ; preds = %for.inc.i
  br label %for.body, !dbg !95

for.cond.cleanup:                                 ; preds = %for.body
  %putchar = tail call i32 @putchar(i32 10), !dbg !96
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %c) #11, !dbg !97
  ret i32 0, !dbg !98

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ 0, %for.body.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !57, metadata !DIExpression()), !dbg !99
  %arrayidx = getelementptr inbounds [8 x i32], ptr %c, i64 0, i64 %indvars.iv, !dbg !100
  %2 = load i32, ptr %arrayidx, align 4, !dbg !100, !tbaa !79
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %2), !dbg !103
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !104
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !57, metadata !DIExpression()), !dbg !99
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8, !dbg !105
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !95, !llvm.loop !106
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #6

; Function Attrs: inaccessiblememonly nocallback nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #7

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.index.nxv4i32(i32, i32) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.ptrue.nxv4i1(i32 immarg) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv4i1(<vscale x 4 x i1>, <vscale x 4 x i1>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.compact.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i1> @llvm.aarch64.sve.whilelt.nxv4i1.i64(i64, i64) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.splice.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.sel.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.ld1.gather.sxtw.index.nxv4i32(<vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #9

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 4 x i32> @llvm.aarch64.sve.mul.nxv4i32(<vscale x 4 x i1>, <vscale x 4 x i32>, <vscale x 4 x i32>) #8

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.sxtw.nxv4i32(<vscale x 4 x i32>, <vscale x 4 x i1>, ptr, <vscale x 4 x i32>) #10

attributes #0 = { argmemonly nofree norecurse nosync nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nofree nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly nofree nounwind willreturn writeonly }
attributes #5 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #6 = { nofree nounwind }
attributes #7 = { inaccessiblememonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { argmemonly nocallback nofree nosync nounwind readonly willreturn }
attributes #10 = { argmemonly nocallback nofree nosync nounwind willreturn writeonly }
attributes #11 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9, !10, !11, !12}
!llvm.ident = !{!13}

!0 = distinct !DICompileUnit(language: DW_LANG_C99, file: !1, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation Pass/Vectorizer Pass/test", checksumkind: CSK_MD5, checksum: "c5d0df64e1ff873f94aa4d4359d35ec8")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 3, type: !15, scopeLine: 3, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !20)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !{!21, !22, !23, !24, !25}
!21 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 3, type: !17)
!22 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 3, type: !17)
!23 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 3, type: !17)
!24 = !DILocalVariable(name: "n", arg: 4, scope: !14, file: !1, line: 3, type: !19)
!25 = !DILocalVariable(name: "i", scope: !26, file: !1, line: 6, type: !19)
!26 = distinct !DILexicalBlock(scope: !14, file: !1, line: 6, column: 5)
!27 = !DILocation(line: 0, scope: !14)
!28 = !DILocation(line: 0, scope: !26)
!29 = !DILocation(line: 6, column: 23, scope: !30)
!30 = distinct !DILexicalBlock(scope: !26, file: !1, line: 6, column: 5)
!31 = !DILocation(line: 6, column: 5, scope: !26)
!32 = !DILocation(line: 7, column: 19, scope: !33)
!33 = distinct !DILexicalBlock(scope: !34, file: !1, line: 7, column: 13)
!34 = distinct !DILexicalBlock(scope: !30, file: !1, line: 6, column: 33)
!35 = !DILocation(line: 6, column: 28, scope: !30)
!36 = !DILocation(line: 8, column: 20, scope: !37)
!37 = distinct !DILexicalBlock(scope: !33, file: !1, line: 7, column: 25)
!38 = !DILocation(line: 8, column: 27, scope: !37)
!39 = !DILocation(line: 8, column: 13, scope: !37)
!40 = !DILocation(line: 11, column: 1, scope: !14)
!41 = distinct !{!41, !31, !42, !43, !44}
!42 = !DILocation(line: 10, column: 5, scope: !26)
!43 = !{!"llvm.loop.mustprogress"}
!44 = !{!"llvm.loop.unroll.disable"}
!45 = !DILocation(line: 9, column: 9, scope: !37)
!46 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 13, type: !47, scopeLine: 13, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !49)
!47 = !DISubroutineType(types: !48)
!48 = !{!19}
!49 = !{!50, !51, !55, !56, !57}
!50 = !DILocalVariable(name: "n", scope: !46, file: !1, line: 14, type: !19)
!51 = !DILocalVariable(name: "a", scope: !46, file: !1, line: 15, type: !52)
!52 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, size: 256, elements: !53)
!53 = !{!54}
!54 = !DISubrange(count: 8)
!55 = !DILocalVariable(name: "b", scope: !46, file: !1, line: 16, type: !52)
!56 = !DILocalVariable(name: "c", scope: !46, file: !1, line: 17, type: !52)
!57 = !DILocalVariable(name: "i", scope: !58, file: !1, line: 21, type: !19)
!58 = distinct !DILexicalBlock(scope: !46, file: !1, line: 21, column: 5)
!59 = !DILocation(line: 0, scope: !46)
!60 = !DILocation(line: 15, column: 9, scope: !46)
!61 = !DILocation(line: 16, column: 9, scope: !46)
!62 = !DILocation(line: 17, column: 5, scope: !46)
!63 = !DILocation(line: 17, column: 9, scope: !46)
!64 = !{!65}
!65 = distinct !{!65, !66, !"foo: %a"}
!66 = distinct !{!66, !"foo"}
!67 = !DILocation(line: 19, column: 5, scope: !46)
!68 = !{!69}
!69 = distinct !{!69, !66, !"foo: %b"}
!70 = !{!71}
!71 = distinct !{!71, !66, !"foo: %c"}
!72 = !DILocation(line: 0, scope: !14, inlinedAt: !73)
!73 = distinct !DILocation(line: 19, column: 5, scope: !46)
!74 = !DILocation(line: 0, scope: !26, inlinedAt: !73)
!75 = !DILocation(line: 6, column: 5, scope: !26, inlinedAt: !73)
!76 = !DILocation(line: 7, column: 19, scope: !33, inlinedAt: !73)
!77 = !DILocation(line: 7, column: 13, scope: !34, inlinedAt: !73)
!78 = !DILocation(line: 8, column: 20, scope: !37, inlinedAt: !73)
!79 = !{!80, !80, i64 0}
!80 = !{!"int", !81, i64 0}
!81 = !{!"omnipotent char", !82, i64 0}
!82 = !{!"Simple C/C++ TBAA"}
!83 = !{!69, !71}
!84 = !DILocation(line: 8, column: 27, scope: !37, inlinedAt: !73)
!85 = !{!65, !71}
!86 = !DILocation(line: 8, column: 25, scope: !37, inlinedAt: !73)
!87 = !DILocation(line: 8, column: 13, scope: !37, inlinedAt: !73)
!88 = !DILocation(line: 8, column: 18, scope: !37, inlinedAt: !73)
!89 = !{!65, !69}
!90 = !DILocation(line: 9, column: 9, scope: !37, inlinedAt: !73)
!91 = !DILocation(line: 6, column: 28, scope: !30, inlinedAt: !73)
!92 = !DILocation(line: 6, column: 23, scope: !30, inlinedAt: !73)
!93 = distinct !{!93, !75, !94, !43, !44}
!94 = !DILocation(line: 10, column: 5, scope: !26, inlinedAt: !73)
!95 = !DILocation(line: 21, column: 5, scope: !58)
!96 = !DILocation(line: 24, column: 5, scope: !46)
!97 = !DILocation(line: 26, column: 1, scope: !46)
!98 = !DILocation(line: 25, column: 5, scope: !46)
!99 = !DILocation(line: 0, scope: !58)
!100 = !DILocation(line: 22, column: 23, scope: !101)
!101 = distinct !DILexicalBlock(scope: !102, file: !1, line: 21, column: 33)
!102 = distinct !DILexicalBlock(scope: !58, file: !1, line: 21, column: 5)
!103 = !DILocation(line: 22, column: 9, scope: !101)
!104 = !DILocation(line: 21, column: 28, scope: !102)
!105 = !DILocation(line: 21, column: 23, scope: !102)
!106 = distinct !{!106, !95, !107, !43, !44}
!107 = !DILocation(line: 23, column: 5, scope: !58)
