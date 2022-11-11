; ModuleID = 'compiled_with_O3.ll'
source_filename = "test.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%d \0A\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local void @foo(ptr noalias nocapture noundef %a, ptr noalias nocapture noundef %b, ptr noalias nocapture noundef %c, ptr noalias nocapture noundef readonly %cond, i32 noundef %n) local_unnamed_addr #0 !dbg !14 {
entry:
  call void @llvm.dbg.value(metadata ptr %a, metadata !24, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %b, metadata !25, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %c, metadata !26, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata ptr %cond, metadata !27, metadata !DIExpression()), !dbg !31
  call void @llvm.dbg.value(metadata i32 %n, metadata !28, metadata !DIExpression()), !dbg !31
  tail call void asm sideeffect ".inst 0x2520e020", ""() #7, !dbg !32, !srcloc !34
  call void @llvm.dbg.value(metadata i32 0, metadata !29, metadata !DIExpression()), !dbg !35
  %cmp51 = icmp sgt i32 %n, 0, !dbg !36
  br i1 %cmp51, label %for.body.preheader, label %for.cond.cleanup, !dbg !38

for.body.preheader:                               ; preds = %entry
  %wide.trip.count = zext i32 %n to i64, !dbg !36
  %0 = call i64 @llvm.vscale.i64(), !dbg !38
  %1 = mul i64 %0, 2, !dbg !38
  %2 = mul i64 %1, 2, !dbg !38
  %3 = icmp uge i64 %wide.trip.count, %2, !dbg !38
  br i1 %3, label %pre.alc, label %Preheader.for.remaining.iterations, !dbg !38

for.cond.cleanup.loopexit:                        ; preds = %middel.block, %for.inc
  br label %for.cond.cleanup, !dbg !39

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %entry
  tail call void asm sideeffect ".inst 0x2520e040", ""() #7, !dbg !39, !srcloc !41
  ret void, !dbg !42

for.body:                                         ; preds = %Preheader.for.remaining.iterations, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %8, %Preheader.for.remaining.iterations ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !29, metadata !DIExpression()), !dbg !35
  %arrayidx = getelementptr inbounds i8, ptr %cond, i64 %indvars.iv, !dbg !43
  %4 = load i8, ptr %arrayidx, align 1, !dbg !43, !tbaa !46, !range !50
  %tobool.not = icmp eq i8 %4, 0, !dbg !43
  br i1 %tobool.not, label %for.inc, label %if.then, !dbg !51

if.then:                                          ; preds = %for.body
  %arrayidx2 = getelementptr inbounds i32, ptr %a, i64 %indvars.iv, !dbg !52
  %5 = load i32, ptr %arrayidx2, align 4, !dbg !52, !tbaa !54
  %mul = mul nsw i32 %5, 18, !dbg !56
  %arrayidx4 = getelementptr inbounds i32, ptr %c, i64 %indvars.iv, !dbg !57
  %6 = load i32, ptr %arrayidx4, align 4, !dbg !57, !tbaa !54
  %mul5 = shl nsw i32 %6, 1, !dbg !58
  %add = add nsw i32 %mul5, %mul, !dbg !59
  %arrayidx7 = getelementptr inbounds i32, ptr %b, i64 %indvars.iv, !dbg !60
  %7 = load i32, ptr %arrayidx7, align 4, !dbg !60, !tbaa !54
  %mul10.neg = mul i32 %5, -4, !dbg !61
  %sub = add i32 %7, %mul10.neg, !dbg !62
  %div = sdiv i32 %add, %sub, !dbg !63
  store i32 %div, ptr %arrayidx2, align 4, !dbg !64, !tbaa !54
  %mul15 = mul nsw i32 %7, 5, !dbg !65
  %mul18 = mul nsw i32 %mul15, %div, !dbg !66
  store i32 %mul18, ptr %arrayidx7, align 4, !dbg !67, !tbaa !54
  %mul23 = shl nsw i32 %mul18, 1, !dbg !68
  %mul26.neg = mul i32 %div, -3, !dbg !69
  %sub27 = add i32 %mul23, %mul26.neg, !dbg !70
  store i32 %sub27, ptr %arrayidx4, align 4, !dbg !71, !tbaa !54
  br label %for.inc, !dbg !72

Preheader.for.remaining.iterations:               ; preds = %middel.block, %for.body.preheader
  %8 = phi i64 [ 0, %for.body.preheader ], [ %84, %middel.block ]
  br label %for.body

pre.alc:                                          ; preds = %for.body.preheader
  %9 = call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 31)
  %10 = urem i64 %wide.trip.count, %1
  %total.iterations.to.be.vectorized = sub i64 %wide.trip.count, %10
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %index = phi i64 [ 0, %pre.alc ], [ %84, %new.latch ]
  %11 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %index, i64 1)
  %12 = getelementptr inbounds i8, ptr %cond, i64 %index, !dbg !43
  %13 = load <vscale x 2 x i8>, ptr %12, align 2
  %14 = icmp eq <vscale x 2 x i8> %13, zeroinitializer
  %15 = xor <vscale x 2 x i1> %14, shufflevector (<vscale x 2 x i1> insertelement (<vscale x 2 x i1> poison, i1 true, i32 0), <vscale x 2 x i1> poison, <vscale x 2 x i32> zeroinitializer)
  %16 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %15, <vscale x 2 x i1> %15)
  %17 = add i64 %index, %1
  %18 = add <vscale x 2 x i64> %11, shufflevector (<vscale x 2 x i64> insertelement (<vscale x 2 x i64> poison, i64 1, i64 0), <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer)
  %19 = getelementptr inbounds i8, ptr %cond, i64 %17, !dbg !43
  %20 = load <vscale x 2 x i8>, ptr %19, align 2
  %21 = icmp eq <vscale x 2 x i8> %20, zeroinitializer
  %22 = xor <vscale x 2 x i1> %21, shufflevector (<vscale x 2 x i1> insertelement (<vscale x 2 x i1> poison, i1 true, i32 0), <vscale x 2 x i1> poison, <vscale x 2 x i32> zeroinitializer)
  %23 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %22, <vscale x 2 x i1> %22)
  %24 = add i64 %16, %23
  %condition = icmp ule i64 %24, %1
  br i1 %condition, label %lane.gather, label %linearized

lane.gather:                                      ; preds = %alc.header
  %25 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %15, <vscale x 2 x i64> %11)
  %26 = call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %22, <vscale x 2 x i64> %18)
  %27 = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %16)
  %28 = call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %27, <vscale x 2 x i64> %25, <vscale x 2 x i64> %26)
  %29 = call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %24)
  %30 = call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %29, <vscale x 2 x i1> %29)
  br label %uniform.block

uniform.block:                                    ; preds = %lane.gather
  %31 = getelementptr inbounds i32, ptr %a, i64 0, !dbg !52
  %32 = getelementptr inbounds i32, ptr %c, i64 0, !dbg !57
  %33 = getelementptr inbounds i32, ptr %b, i64 0, !dbg !60
  %34 = call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %29, ptr %31, <vscale x 2 x i64> %28)
  %35 = mul <vscale x 2 x i32> %34, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %36 = call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %29, ptr %32, <vscale x 2 x i64> %28)
  %37 = shl <vscale x 2 x i32> %36, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %38 = add <vscale x 2 x i32> %37, %35
  %39 = call <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1> %29, ptr %33, <vscale x 2 x i64> %28)
  %40 = mul <vscale x 2 x i32> %34, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %41 = add <vscale x 2 x i32> %39, %40
  %42 = sdiv <vscale x 2 x i32> %38, %41
  call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %42, <vscale x 2 x i1> %29, ptr %31, <vscale x 2 x i64> %28)
  %43 = mul <vscale x 2 x i32> %39, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %44 = mul <vscale x 2 x i32> %43, %42
  call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %44, <vscale x 2 x i1> %29, ptr %33, <vscale x 2 x i64> %28)
  %45 = shl <vscale x 2 x i32> %44, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %46 = mul <vscale x 2 x i32> %42, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %47 = add <vscale x 2 x i32> %45, %46
  call void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32> %47, <vscale x 2 x i1> %29, ptr %32, <vscale x 2 x i64> %28)
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %48 = getelementptr inbounds i32, ptr %a, i64 %index, !dbg !52
  %49 = getelementptr inbounds i32, ptr %c, i64 %index, !dbg !57
  %50 = getelementptr inbounds i32, ptr %b, i64 %index, !dbg !60
  %51 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %index, i64 1)
  %52 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %48, i32 8, <vscale x 2 x i1> %15, <vscale x 2 x i32> undef)
  %53 = mul <vscale x 2 x i32> %52, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %54 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %49, i32 8, <vscale x 2 x i1> %15, <vscale x 2 x i32> undef)
  %55 = shl <vscale x 2 x i32> %54, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %56 = add <vscale x 2 x i32> %55, %53
  %57 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %50, i32 8, <vscale x 2 x i1> %15, <vscale x 2 x i32> undef)
  %58 = mul <vscale x 2 x i32> %52, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %59 = add <vscale x 2 x i32> %57, %58
  %60 = sdiv <vscale x 2 x i32> %56, %59
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %60, ptr %48, i32 8, <vscale x 2 x i1> %15)
  %61 = mul <vscale x 2 x i32> %57, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %62 = mul <vscale x 2 x i32> %61, %60
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %62, ptr %50, i32 8, <vscale x 2 x i1> %15)
  %63 = shl <vscale x 2 x i32> %62, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %64 = mul <vscale x 2 x i32> %60, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %65 = add <vscale x 2 x i32> %63, %64
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %65, ptr %49, i32 8, <vscale x 2 x i1> %15)
  %66 = getelementptr inbounds i32, ptr %a, i64 %17, !dbg !52
  %67 = getelementptr inbounds i32, ptr %c, i64 %17, !dbg !57
  %68 = getelementptr inbounds i32, ptr %b, i64 %17, !dbg !60
  %69 = call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %17, i64 1)
  %70 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %66, i32 8, <vscale x 2 x i1> %22, <vscale x 2 x i32> undef)
  %71 = mul <vscale x 2 x i32> %70, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 18, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %72 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %67, i32 8, <vscale x 2 x i1> %22, <vscale x 2 x i32> undef)
  %73 = shl <vscale x 2 x i32> %72, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %74 = add <vscale x 2 x i32> %73, %71
  %75 = call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr %68, i32 8, <vscale x 2 x i1> %22, <vscale x 2 x i32> undef)
  %76 = mul <vscale x 2 x i32> %70, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -4, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %77 = add <vscale x 2 x i32> %75, %76
  %78 = sdiv <vscale x 2 x i32> %74, %77
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %78, ptr %66, i32 8, <vscale x 2 x i1> %22)
  %79 = mul <vscale x 2 x i32> %75, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 5, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %80 = mul <vscale x 2 x i32> %79, %78
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %80, ptr %68, i32 8, <vscale x 2 x i1> %22)
  %81 = shl <vscale x 2 x i32> %80, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 1, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %82 = mul <vscale x 2 x i32> %78, shufflevector (<vscale x 2 x i32> insertelement (<vscale x 2 x i32> poison, i32 -3, i64 0), <vscale x 2 x i32> poison, <vscale x 2 x i32> zeroinitializer)
  %83 = add <vscale x 2 x i32> %81, %82
  call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %83, ptr %67, i32 8, <vscale x 2 x i1> %22)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %uniform.block
  %84 = add i64 %17, %1
  %85 = icmp eq i64 %84, %total.iterations.to.be.vectorized
  br i1 %85, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition1 = icmp eq i64 %10, 0
  br i1 %condition1, label %for.cond.cleanup.loopexit, label %Preheader.for.remaining.iterations

for.inc:                                          ; preds = %if.then, %for.body
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !73
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !29, metadata !DIExpression()), !dbg !35
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count, !dbg !36
  br i1 %exitcond.not, label %for.cond.cleanup.loopexit, label %for.body, !dbg !38, !llvm.loop !74
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main() local_unnamed_addr #0 !dbg !78 {
entry:
  call void @llvm.dbg.value(metadata i32 8192, metadata !82, metadata !DIExpression()), !dbg !109
  %vla40 = alloca [8192 x i32], align 4, !dbg !110
  call void @llvm.dbg.value(metadata i64 8192, metadata !83, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata ptr %vla40, metadata !85, metadata !DIExpression()), !dbg !111
  %vla141 = alloca [8192 x i32], align 4, !dbg !112
  call void @llvm.dbg.value(metadata i64 8192, metadata !89, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata ptr %vla141, metadata !90, metadata !DIExpression()), !dbg !113
  %vla242 = alloca [8192 x i32], align 4, !dbg !114
  call void @llvm.dbg.value(metadata i64 8192, metadata !94, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata ptr %vla242, metadata !95, metadata !DIExpression()), !dbg !115
  %vla343 = alloca [8192 x i8], align 1, !dbg !116
  call void @llvm.dbg.value(metadata i64 8192, metadata !99, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.declare(metadata ptr %vla343, metadata !100, metadata !DIExpression()), !dbg !117
  call void @llvm.dbg.value(metadata i32 0, metadata !104, metadata !DIExpression()), !dbg !118
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %vla242, i8 0, i64 32768, i1 false), !dbg !119, !tbaa !54
  br label %for.body, !dbg !122

for.cond.cleanup:                                 ; preds = %cond.end
  call void @foo(ptr noundef nonnull %vla40, ptr noundef nonnull %vla141, ptr noundef nonnull %vla242, ptr noundef nonnull %vla343, i32 noundef 8192), !dbg !123
  call void @llvm.dbg.value(metadata i32 0, metadata !106, metadata !DIExpression()), !dbg !109
  call void @llvm.dbg.value(metadata i32 0, metadata !107, metadata !DIExpression()), !dbg !124
  br label %for.body17, !dbg !125

for.body:                                         ; preds = %cond.end, %entry
  %indvars.iv = phi i64 [ 0, %entry ], [ %indvars.iv.next, %cond.end ]
  %indvars49 = trunc i64 %indvars.iv to i32
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !104, metadata !DIExpression()), !dbg !118
  %arrayidx = getelementptr inbounds i32, ptr %vla40, i64 %indvars.iv, !dbg !126
  store i32 %indvars49, ptr %arrayidx, align 4, !dbg !127, !tbaa !54
  %arrayidx5 = getelementptr inbounds i32, ptr %vla141, i64 %indvars.iv, !dbg !128
  store i32 2, ptr %arrayidx5, align 4, !dbg !129, !tbaa !54
  %cmp8 = icmp eq i64 %indvars.iv, 0, !dbg !130
  br i1 %cmp8, label %cond.end, label %cond.false, !dbg !131

cond.false:                                       ; preds = %for.body
  %rem.lhs.trunc = trunc i64 %indvars.iv to i16, !dbg !132
  %rem44 = urem i16 %rem.lhs.trunc, 10, !dbg !132
  %cmp9 = icmp eq i16 %rem44, 0, !dbg !133
  %conv = zext i1 %cmp9 to i8, !dbg !133
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %for.body
  %cond = phi i8 [ %conv, %cond.false ], [ 0, %for.body ], !dbg !131
  %arrayidx11 = getelementptr inbounds i8, ptr %vla343, i64 %indvars.iv, !dbg !134
  store i8 %cond, ptr %arrayidx11, align 1, !dbg !135, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !136
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !104, metadata !DIExpression()), !dbg !118
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !137
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !dbg !122, !llvm.loop !138

for.cond.cleanup16:                               ; preds = %for.body17
  %add.lcssa = phi i32 [ %add, %for.body17 ], !dbg !140
  %call = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i32 noundef %add.lcssa), !dbg !143
  ret i32 0, !dbg !144

for.body17:                                       ; preds = %for.body17, %for.cond.cleanup
  %indvars.iv50 = phi i64 [ 0, %for.cond.cleanup ], [ %indvars.iv.next51, %for.body17 ]
  %sum.047 = phi i32 [ 0, %for.cond.cleanup ], [ %add, %for.body17 ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv50, metadata !107, metadata !DIExpression()), !dbg !124
  call void @llvm.dbg.value(metadata i32 %sum.047, metadata !106, metadata !DIExpression()), !dbg !109
  %arrayidx19 = getelementptr inbounds i32, ptr %vla242, i64 %indvars.iv50, !dbg !145
  %0 = load i32, ptr %arrayidx19, align 4, !dbg !145, !tbaa !54
  %add = add nsw i32 %0, %sum.047, !dbg !140
  call void @llvm.dbg.value(metadata i32 %add, metadata !106, metadata !DIExpression()), !dbg !109
  %indvars.iv.next51 = add nuw nsw i64 %indvars.iv50, 1, !dbg !146
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next51, metadata !107, metadata !DIExpression()), !dbg !124
  %exitcond53.not = icmp eq i64 %indvars.iv.next51, 8192, !dbg !147
  br i1 %exitcond53.not, label %for.cond.cleanup16, label %for.body17, !dbg !125, !llvm.loop !148
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
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.aarch64.sve.ld1.gather.index.nxv2i32(<vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.aarch64.sve.st1.scatter.index.nxv2i32(<vscale x 2 x i32>, <vscale x 2 x i1>, ptr, <vscale x 2 x i64>) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>, ptr, i32 immarg, <vscale x 2 x i1>) #6

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
!1 = !DIFile(filename: "test.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "12af9cfb752a8a47ccd735440d4258d7")
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
!14 = distinct !DISubprogram(name: "foo", scope: !1, file: !1, line: 7, type: !15, scopeLine: 7, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !23)
!15 = !DISubroutineType(types: !16)
!16 = !{null, !17, !17, !17, !20, !19}
!17 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !18)
!18 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !19, size: 64)
!19 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!20 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !21)
!21 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !22, size: 64)
!22 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!23 = !{!24, !25, !26, !27, !28, !29}
!24 = !DILocalVariable(name: "a", arg: 1, scope: !14, file: !1, line: 7, type: !17)
!25 = !DILocalVariable(name: "b", arg: 2, scope: !14, file: !1, line: 7, type: !17)
!26 = !DILocalVariable(name: "c", arg: 3, scope: !14, file: !1, line: 7, type: !17)
!27 = !DILocalVariable(name: "cond", arg: 4, scope: !14, file: !1, line: 7, type: !20)
!28 = !DILocalVariable(name: "n", arg: 5, scope: !14, file: !1, line: 7, type: !19)
!29 = !DILocalVariable(name: "i", scope: !30, file: !1, line: 11, type: !19)
!30 = distinct !DILexicalBlock(scope: !14, file: !1, line: 11, column: 5)
!31 = !DILocation(line: 0, scope: !14)
!32 = !DILocation(line: 10, column: 5, scope: !33)
!33 = distinct !DILexicalBlock(scope: !14, file: !1, line: 10, column: 5)
!34 = !{i64 2147613735}
!35 = !DILocation(line: 0, scope: !30)
!36 = !DILocation(line: 11, column: 23, scope: !37)
!37 = distinct !DILexicalBlock(scope: !30, file: !1, line: 11, column: 5)
!38 = !DILocation(line: 11, column: 5, scope: !30)
!39 = !DILocation(line: 18, column: 5, scope: !40)
!40 = distinct !DILexicalBlock(scope: !14, file: !1, line: 18, column: 5)
!41 = !{i64 2147613774}
!42 = !DILocation(line: 20, column: 1, scope: !14)
!43 = !DILocation(line: 12, column: 13, scope: !44)
!44 = distinct !DILexicalBlock(scope: !45, file: !1, line: 12, column: 13)
!45 = distinct !DILexicalBlock(scope: !37, file: !1, line: 11, column: 33)
!46 = !{!47, !47, i64 0}
!47 = !{!"_Bool", !48, i64 0}
!48 = !{!"omnipotent char", !49, i64 0}
!49 = !{!"Simple C/C++ TBAA"}
!50 = !{i8 0, i8 2}
!51 = !DILocation(line: 12, column: 13, scope: !45)
!52 = !DILocation(line: 13, column: 26, scope: !53)
!53 = distinct !DILexicalBlock(scope: !44, file: !1, line: 12, column: 22)
!54 = !{!55, !55, i64 0}
!55 = !{!"int", !48, i64 0}
!56 = !DILocation(line: 13, column: 24, scope: !53)
!57 = !DILocation(line: 13, column: 37, scope: !53)
!58 = !DILocation(line: 13, column: 35, scope: !53)
!59 = !DILocation(line: 13, column: 31, scope: !53)
!60 = !DILocation(line: 13, column: 46, scope: !53)
!61 = !DILocation(line: 13, column: 55, scope: !53)
!62 = !DILocation(line: 13, column: 51, scope: !53)
!63 = !DILocation(line: 13, column: 43, scope: !53)
!64 = !DILocation(line: 13, column: 18, scope: !53)
!65 = !DILocation(line: 14, column: 22, scope: !53)
!66 = !DILocation(line: 14, column: 29, scope: !53)
!67 = !DILocation(line: 14, column: 18, scope: !53)
!68 = !DILocation(line: 15, column: 22, scope: !53)
!69 = !DILocation(line: 15, column: 33, scope: !53)
!70 = !DILocation(line: 15, column: 29, scope: !53)
!71 = !DILocation(line: 15, column: 18, scope: !53)
!72 = !DILocation(line: 16, column: 9, scope: !53)
!73 = !DILocation(line: 11, column: 28, scope: !37)
!74 = distinct !{!74, !38, !75, !76, !77}
!75 = !DILocation(line: 17, column: 5, scope: !30)
!76 = !{!"llvm.loop.mustprogress"}
!77 = !{!"llvm.loop.unroll.disable"}
!78 = distinct !DISubprogram(name: "main", scope: !1, file: !1, line: 23, type: !79, scopeLine: 23, flags: DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !81)
!79 = !DISubroutineType(types: !80)
!80 = !{!19}
!81 = !{!82, !83, !85, !89, !90, !94, !95, !99, !100, !104, !106, !107}
!82 = !DILocalVariable(name: "n", scope: !78, file: !1, line: 25, type: !19)
!83 = !DILocalVariable(name: "__vla_expr0", scope: !78, type: !84, flags: DIFlagArtificial)
!84 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!85 = !DILocalVariable(name: "a", scope: !78, file: !1, line: 27, type: !86)
!86 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !87)
!87 = !{!88}
!88 = !DISubrange(count: !83)
!89 = !DILocalVariable(name: "__vla_expr1", scope: !78, type: !84, flags: DIFlagArtificial)
!90 = !DILocalVariable(name: "b", scope: !78, file: !1, line: 28, type: !91)
!91 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !92)
!92 = !{!93}
!93 = !DISubrange(count: !89)
!94 = !DILocalVariable(name: "__vla_expr2", scope: !78, type: !84, flags: DIFlagArtificial)
!95 = !DILocalVariable(name: "c", scope: !78, file: !1, line: 29, type: !96)
!96 = !DICompositeType(tag: DW_TAG_array_type, baseType: !19, elements: !97)
!97 = !{!98}
!98 = !DISubrange(count: !94)
!99 = !DILocalVariable(name: "__vla_expr3", scope: !78, type: !84, flags: DIFlagArtificial)
!100 = !DILocalVariable(name: "cond", scope: !78, file: !1, line: 30, type: !101)
!101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !22, elements: !102)
!102 = !{!103}
!103 = !DISubrange(count: !99)
!104 = !DILocalVariable(name: "i", scope: !105, file: !1, line: 32, type: !19)
!105 = distinct !DILexicalBlock(scope: !78, file: !1, line: 32, column: 5)
!106 = !DILocalVariable(name: "sum", scope: !78, file: !1, line: 42, type: !19)
!107 = !DILocalVariable(name: "i", scope: !108, file: !1, line: 44, type: !19)
!108 = distinct !DILexicalBlock(scope: !78, file: !1, line: 44, column: 5)
!109 = !DILocation(line: 0, scope: !78)
!110 = !DILocation(line: 27, column: 5, scope: !78)
!111 = !DILocation(line: 27, column: 9, scope: !78)
!112 = !DILocation(line: 28, column: 5, scope: !78)
!113 = !DILocation(line: 28, column: 9, scope: !78)
!114 = !DILocation(line: 29, column: 5, scope: !78)
!115 = !DILocation(line: 29, column: 9, scope: !78)
!116 = !DILocation(line: 30, column: 5, scope: !78)
!117 = !DILocation(line: 30, column: 10, scope: !78)
!118 = !DILocation(line: 0, scope: !105)
!119 = !DILocation(line: 35, column: 14, scope: !120)
!120 = distinct !DILexicalBlock(scope: !121, file: !1, line: 32, column: 33)
!121 = distinct !DILexicalBlock(scope: !105, file: !1, line: 32, column: 5)
!122 = !DILocation(line: 32, column: 5, scope: !105)
!123 = !DILocation(line: 40, column: 5, scope: !78)
!124 = !DILocation(line: 0, scope: !108)
!125 = !DILocation(line: 44, column: 5, scope: !108)
!126 = !DILocation(line: 33, column: 9, scope: !120)
!127 = !DILocation(line: 33, column: 14, scope: !120)
!128 = !DILocation(line: 34, column: 9, scope: !120)
!129 = !DILocation(line: 34, column: 14, scope: !120)
!130 = !DILocation(line: 36, column: 22, scope: !120)
!131 = !DILocation(line: 36, column: 20, scope: !120)
!132 = !DILocation(line: 36, column: 36, scope: !120)
!133 = !DILocation(line: 36, column: 41, scope: !120)
!134 = !DILocation(line: 36, column: 9, scope: !120)
!135 = !DILocation(line: 36, column: 17, scope: !120)
!136 = !DILocation(line: 32, column: 28, scope: !121)
!137 = !DILocation(line: 32, column: 23, scope: !121)
!138 = distinct !{!138, !122, !139, !76, !77}
!139 = !DILocation(line: 37, column: 5, scope: !105)
!140 = !DILocation(line: 45, column: 13, scope: !141)
!141 = distinct !DILexicalBlock(scope: !142, file: !1, line: 44, column: 33)
!142 = distinct !DILexicalBlock(scope: !108, file: !1, line: 44, column: 5)
!143 = !DILocation(line: 48, column: 5, scope: !78)
!144 = !DILocation(line: 52, column: 1, scope: !78)
!145 = !DILocation(line: 45, column: 16, scope: !141)
!146 = !DILocation(line: 44, column: 28, scope: !142)
!147 = !DILocation(line: 44, column: 23, scope: !142)
!148 = distinct !{!148, !125, !149, !76, !77}
!149 = !DILocation(line: 46, column: 5, scope: !108)
