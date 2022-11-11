; ModuleID = 'alc_simple_handwritten.ll'
source_filename = "s253/tsvc-functions.c"
target datalayout = "e-m:e-i8:8:32-i16:16:32-i64:64-i128:128-n32:64-S128"
target triple = "aarch64-unknown-linux-gnu"

%struct.args_t = type { %struct.timeval, %struct.timeval, ptr }
%struct.timeval = type { i64, i64 }

@__func__.s253 = private unnamed_addr constant [5 x i8] c"s253\00", align 1
@a = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !0
@b = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !40
@d = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !44
@c = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !42
@e = dso_local global [8192 x i32] zeroinitializer, align 64, !dbg !46
@aa = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !48
@bb = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !53
@cc = dso_local global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !55
@.str = private unnamed_addr constant [11 x i8] c"%10.3f\09%f\0A\00", align 1
@flat_2d_array = dso_local local_unnamed_addr global [65536 x i32] zeroinitializer, align 64, !dbg !30
@x = dso_local local_unnamed_addr global [8192 x i32] zeroinitializer, align 64, !dbg !35
@tt = dso_local local_unnamed_addr global [256 x [256 x i32]] zeroinitializer, align 64, !dbg !57
@indx = dso_local local_unnamed_addr global [8192 x i32] zeroinitializer, align 64, !dbg !59
@xx = dso_local local_unnamed_addr global ptr null, align 8, !dbg !62
@yy = dso_local local_unnamed_addr global ptr null, align 8, !dbg !66
@str = private unnamed_addr constant [26 x i8] c"Loop \09Time(sec) \09Checksum\00", align 1

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @s253(ptr nocapture noundef %func_args) #0 !dbg !80 {
entry:
  call void @llvm.dbg.value(metadata ptr %func_args, metadata !84, metadata !DIExpression()), !dbg !92
  %call = tail call i32 @initialise_arrays(ptr noundef nonnull @__func__.s253) #12, !dbg !93
  %call1 = tail call i32 @gettimeofday(ptr noundef %func_args, ptr noundef null) #12, !dbg !94
  tail call void asm sideeffect "dmb sy\0A\09orr x3,x3,x3\0A", "~{memory}"() #12
  %0 = tail call i64 @llvm.vscale.i64(), !dbg !92
  %1 = shl i64 %0, 1
  %2 = icmp ult i64 %1, 8193
  %.rhs.trunc = trunc i64 %1 to i16
  %3 = insertelement <vscale x 2 x i64> poison, i64 %1, i64 0
  %stepVector.update.values = shufflevector <vscale x 2 x i64> %3, <vscale x 2 x i64> poison, <vscale x 2 x i32> zeroinitializer
  br label %for.cond2.preheader, !dbg !95

for.cond2.preheader:                              ; preds = %for.cond.cleanup4, %entry
  %nl.038 = phi i32 [ 0, %entry ], [ %inc21, %for.cond.cleanup4 ]
  call void @llvm.dbg.value(metadata i32 %nl.038, metadata !86, metadata !DIExpression()), !dbg !96
  call void @llvm.dbg.value(metadata i32 0, metadata !88, metadata !DIExpression()), !dbg !97
  br i1 %2, label %pre.alc, label %for.body5.preheader, !dbg !98

for.cond.cleanup:                                 ; preds = %for.cond.cleanup4
  tail call void asm sideeffect "dmb sy\0A\09orr x4,x4,x4\0A", "~{memory}"() #12
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !99
  %call23 = tail call i32 @gettimeofday(ptr noundef nonnull %t2, ptr noundef null) #12, !dbg !100
  %call24 = tail call i32 @calc_checksum(ptr noundef nonnull @__func__.s253) #12, !dbg !101
  ret i32 %call24, !dbg !102

for.cond.cleanup4:                                ; preds = %for.inc, %middel.block
  %call19 = tail call i32 @dummy(ptr noundef nonnull @a, ptr noundef nonnull @b, ptr noundef nonnull @c, ptr noundef nonnull @d, ptr noundef nonnull @e, ptr noundef nonnull @aa, ptr noundef nonnull @bb, ptr noundef nonnull @cc, i32 noundef 0) #12, !dbg !103
  %inc21 = add nuw nsw i32 %nl.038, 1, !dbg !104
  call void @llvm.dbg.value(metadata i32 %inc21, metadata !86, metadata !DIExpression()), !dbg !96
  %exitcond40.not = icmp eq i32 %inc21, 10, !dbg !105
  br i1 %exitcond40.not, label %for.cond.cleanup, label %for.cond2.preheader, !dbg !95, !llvm.loop !106

for.body5:                                        ; preds = %for.body5.preheader, %for.inc
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.inc ], [ %indvars.iv.ph, %for.body5.preheader ]
  call void @llvm.dbg.value(metadata i64 %indvars.iv, metadata !88, metadata !DIExpression()), !dbg !97
  %arrayidx = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %indvars.iv, !dbg !110
  %4 = load i32, ptr %arrayidx, align 4, !dbg !110, !tbaa !114
  %arrayidx7 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %indvars.iv, !dbg !118
  %5 = load i32, ptr %arrayidx7, align 4, !dbg !118, !tbaa !114
  %cmp8 = icmp sgt i32 %4, %5, !dbg !119
  br i1 %cmp8, label %if.then, label %for.inc, !dbg !120

if.then:                                          ; preds = %for.body5
  %arrayidx14 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %indvars.iv, !dbg !121
  %6 = load i32, ptr %arrayidx14, align 4, !dbg !121, !tbaa !114
  %mul = mul nsw i32 %6, %5, !dbg !123
  %sub = sub nsw i32 %4, %mul, !dbg !124
  call void @llvm.dbg.value(metadata i32 %sub, metadata !85, metadata !DIExpression()), !dbg !92
  %arrayidx16 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %indvars.iv, !dbg !125
  %7 = load i32, ptr %arrayidx16, align 4, !dbg !126, !tbaa !114
  %add = add nsw i32 %sub, %7, !dbg !126
  store i32 %add, ptr %arrayidx16, align 4, !dbg !126, !tbaa !114
  store i32 %sub, ptr %arrayidx, align 4, !dbg !127, !tbaa !114
  br label %for.inc, !dbg !128

pre.alc:                                          ; preds = %for.cond2.preheader
  %8 = urem i16 8192, %.rhs.trunc
  %.zext = zext i16 %8 to i64
  %total.iterations.to.be.vectorized = sub nuw nsw i64 8192, %.zext
  %9 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 2)
  br label %alc.header

alc.header:                                       ; preds = %new.latch, %pre.alc
  %10 = phi i64 [ 0, %pre.alc ], [ %25, %new.latch ]
  %second.itr.index = add i64 %10, %1
  %11 = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %10, !dbg !110
  %12 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %10, !dbg !118
  %13 = getelementptr inbounds [8192 x i32], ptr @a, i64 0, i64 %second.itr.index, !dbg !110
  %14 = getelementptr inbounds [8192 x i32], ptr @b, i64 0, i64 %second.itr.index, !dbg !118
  %15 = load <vscale x 2 x i32>, ptr %11, align 8
  %16 = load <vscale x 2 x i32>, ptr %12, align 8
  %predicate.vector.1 = icmp sgt <vscale x 2 x i32> %15, %16
  %17 = load <vscale x 2 x i32>, ptr %13, align 8
  %18 = load <vscale x 2 x i32>, ptr %14, align 8
  %predicate.vector.2 = icmp sgt <vscale x 2 x i32> %17, %18
  %num.active.lanes.1 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %9, <vscale x 2 x i1> %predicate.vector.1)
  %num.active.lanes.2 = tail call i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1> %9, <vscale x 2 x i1> %predicate.vector.2)
  %num.all.true.preds = add i64 %num.active.lanes.2, %num.active.lanes.1
  %condition.not = icmp ugt i64 %num.all.true.preds, %1
  br i1 %condition.not, label %linearized, label %lane.gather

lane.gather:                                      ; preds = %alc.header
  %19 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64 %10, i64 1)
  %20 = add <vscale x 2 x i64> %19, %stepVector.update.values
  %21 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i64> %19)
  %22 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1> %predicate.vector.2, <vscale x 2 x i64> %20)
  %23 = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.active.lanes.1)
  %24 = tail call <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1> %23, <vscale x 2 x i64> %21, <vscale x 2 x i64> %22)
  %uniform.vec.predicate = tail call <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64 0, i64 %num.all.true.preds)
  %ptr.vec.a = getelementptr inbounds [8192 x i32], ptr @a, i64 0, <vscale x 2 x i64> %24, !dbg !110
  %ptr.vec.b = getelementptr inbounds [8192 x i32], ptr @b, i64 0, <vscale x 2 x i64> %24, !dbg !110
  %loaded.a = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.vec.a, i32 16, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %loaded.b = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.vec.b, i32 16, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %ptr.vec.d = getelementptr inbounds [8192 x i32], ptr @d, i64 0, <vscale x 2 x i64> %24, !dbg !110
  %loaded.d = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.vec.d, i32 16, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %mul.vec = mul <vscale x 2 x i32> %loaded.d, %loaded.b
  %sub.vec = sub <vscale x 2 x i32> %loaded.a, %mul.vec
  %ptr.vec.c = getelementptr inbounds [8192 x i32], ptr @c, i64 0, <vscale x 2 x i64> %24, !dbg !110
  %loaded.c = tail call <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr> %ptr.vec.c, i32 16, <vscale x 2 x i1> %uniform.vec.predicate, <vscale x 2 x i32> poison)
  %add.vec = add <vscale x 2 x i32> %sub.vec, %loaded.c
  tail call void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32> %add.vec, <vscale x 2 x ptr> %ptr.vec.c, i32 16, <vscale x 2 x i1> %uniform.vec.predicate)
  tail call void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32> %sub.vec, <vscale x 2 x ptr> %ptr.vec.a, i32 16, <vscale x 2 x i1> %uniform.vec.predicate)
  br label %new.latch

linearized:                                       ; preds = %alc.header
  %ptr.d.linearize.1 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %10, !dbg !110
  %loaded.d.linearize.1 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr nonnull %ptr.d.linearize.1, i32 8, <vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i32> undef)
  %mul.linearize.1 = mul <vscale x 2 x i32> %loaded.d.linearize.1, %16
  %sub.linearize.1 = sub <vscale x 2 x i32> %15, %mul.linearize.1
  %ptr.c.linearize.1 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %10, !dbg !110
  %loaded.c.linearize.1 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr nonnull %ptr.c.linearize.1, i32 8, <vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i32> undef)
  %add.vec.linearize.1 = add <vscale x 2 x i32> %sub.linearize.1, %loaded.c.linearize.1
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %add.vec.linearize.1, ptr nonnull %ptr.c.linearize.1, i32 8, <vscale x 2 x i1> %predicate.vector.1)
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %sub.linearize.1, ptr nonnull %11, i32 8, <vscale x 2 x i1> %predicate.vector.1)
  %ptr.d.linearize.2 = getelementptr inbounds [8192 x i32], ptr @d, i64 0, i64 %second.itr.index, !dbg !110
  %loaded.d.linearize.2 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr nonnull %ptr.d.linearize.2, i32 8, <vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i32> undef)
  %mul.linearize.2 = mul <vscale x 2 x i32> %loaded.d.linearize.2, %18
  %sub.linearize.2 = sub <vscale x 2 x i32> %17, %mul.linearize.2
  %ptr.c.linearize.2 = getelementptr inbounds [8192 x i32], ptr @c, i64 0, i64 %second.itr.index, !dbg !110
  %loaded.c.linearize.2 = tail call <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr nonnull %ptr.c.linearize.2, i32 8, <vscale x 2 x i1> %predicate.vector.1, <vscale x 2 x i32> undef)
  %add.vec.linearize.2 = add <vscale x 2 x i32> %sub.linearize.2, %loaded.c.linearize.2
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %add.vec.linearize.2, ptr nonnull %ptr.c.linearize.2, i32 8, <vscale x 2 x i1> %predicate.vector.2)
  tail call void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32> %sub.linearize.2, ptr nonnull %13, i32 8, <vscale x 2 x i1> %predicate.vector.2)
  br label %new.latch

new.latch:                                        ; preds = %linearized, %lane.gather
  %25 = add i64 %second.itr.index, %1
  %loop.exit.cond = icmp ugt i64 %25, %total.iterations.to.be.vectorized
  br i1 %loop.exit.cond, label %middel.block, label %alc.header

middel.block:                                     ; preds = %new.latch
  %condition.mid.block = icmp eq i16 %8, 0
  br i1 %condition.mid.block, label %for.cond.cleanup4, label %for.body5.preheader

for.body5.preheader:                              ; preds = %middel.block, %for.cond2.preheader
  %indvars.iv.ph = phi i64 [ %25, %middel.block ], [ 0, %for.cond2.preheader ]
  br label %for.body5, !dbg !98

for.inc:                                          ; preds = %if.then, %for.body5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1, !dbg !129
  call void @llvm.dbg.value(metadata i64 %indvars.iv.next, metadata !88, metadata !DIExpression()), !dbg !97
  %exitcond.not = icmp eq i64 %indvars.iv.next, 8192, !dbg !130
  br i1 %exitcond.not, label %for.cond.cleanup4, label %for.body5, !dbg !98, !llvm.loop !131
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

declare !dbg !133 i32 @initialise_arrays(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare !dbg !140 noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

declare !dbg !146 i32 @dummy(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare !dbg !152 i32 @calc_checksum(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind uwtable
define dso_local void @time_function(ptr nocapture noundef readonly %vector_func, ptr noundef %arg_info) local_unnamed_addr #0 !dbg !155 {
entry:
  %func_args = alloca %struct.args_t, align 8
  call void @llvm.dbg.value(metadata ptr %vector_func, metadata !159, metadata !DIExpression()), !dbg !167
  call void @llvm.dbg.value(metadata ptr %arg_info, metadata !160, metadata !DIExpression()), !dbg !167
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %func_args) #12, !dbg !168
  call void @llvm.dbg.declare(metadata ptr %func_args, metadata !161, metadata !DIExpression()), !dbg !169
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %func_args, i8 0, i64 32, i1 false), !dbg !169
  %arg_info1 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 2, !dbg !170
  store ptr %arg_info, ptr %arg_info1, align 8, !dbg !170, !tbaa !171
  %call = call i32 %vector_func(ptr noundef nonnull %func_args) #12, !dbg !176
  %conv = sitofp i32 %call to double, !dbg !176
  call void @llvm.dbg.value(metadata double %conv, metadata !162, metadata !DIExpression()), !dbg !167
  %0 = load i64, ptr %func_args, align 8, !dbg !177, !tbaa !178
  %conv2 = sitofp i64 %0 to double, !dbg !179
  %tv_usec = getelementptr inbounds %struct.timeval, ptr %func_args, i64 0, i32 1, !dbg !180
  %1 = load i64, ptr %tv_usec, align 8, !dbg !180, !tbaa !181
  %conv4 = sitofp i64 %1 to double, !dbg !182
  %div = fdiv double %conv4, 1.000000e+06, !dbg !183
  %add = fadd double %div, %conv2, !dbg !184
  call void @llvm.dbg.value(metadata double %add, metadata !164, metadata !DIExpression()), !dbg !167
  %t2 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, !dbg !185
  %2 = load i64, ptr %t2, align 8, !dbg !186, !tbaa !187
  %conv6 = sitofp i64 %2 to double, !dbg !188
  %tv_usec8 = getelementptr inbounds %struct.args_t, ptr %func_args, i64 0, i32 1, i32 1, !dbg !189
  %3 = load i64, ptr %tv_usec8, align 8, !dbg !189, !tbaa !190
  %conv9 = sitofp i64 %3 to double, !dbg !191
  %div10 = fdiv double %conv9, 1.000000e+06, !dbg !192
  %add11 = fadd double %div10, %conv6, !dbg !193
  call void @llvm.dbg.value(metadata double %add11, metadata !165, metadata !DIExpression()), !dbg !167
  %sub = fsub double %add11, %add, !dbg !194
  call void @llvm.dbg.value(metadata double %sub, metadata !166, metadata !DIExpression()), !dbg !167
  %call12 = call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, double noundef %sub, double noundef %conv), !dbg !195
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %func_args) #12, !dbg !196
  ret void, !dbg !196
}

; Function Attrs: argmemonly mustprogress nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noinline nounwind uwtable
define dso_local i32 @main(i32 noundef %argc, ptr nocapture noundef readnone %argv) local_unnamed_addr #0 !dbg !197 {
entry:
  call void @llvm.dbg.value(metadata i32 %argc, metadata !203, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata ptr %argv, metadata !204, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 1, metadata !205, metadata !DIExpression()), !dbg !207
  call void @llvm.dbg.value(metadata i32 1, metadata !206, metadata !DIExpression()), !dbg !207
  %puts = tail call i32 @puts(ptr nonnull @str), !dbg !208
  tail call void @time_function(ptr noundef nonnull @s253, ptr noundef null), !dbg !209
  ret i32 0, !dbg !210
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn
declare void @llvm.dbg.value(metadata, metadata, metadata) #1

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.vscale.i64() #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.ptrue.nxv2i1(i32 immarg) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.compact.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare i64 @llvm.aarch64.sve.cntp.nxv2i1(<vscale x 2 x i1>, <vscale x 2 x i1>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i1> @llvm.aarch64.sve.whilelt.nxv2i1.i64(i64, i64) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.splice.nxv2i64(<vscale x 2 x i1>, <vscale x 2 x i64>, <vscale x 2 x i64>) #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind readnone willreturn
declare <vscale x 2 x i64> @llvm.aarch64.sve.index.nxv2i64(i64, i64) #7

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.load.nxv2i32.p0(ptr, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #8

; Function Attrs: argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.store.nxv2i32.p0(<vscale x 2 x i32>, ptr, i32 immarg, <vscale x 2 x i1>) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind readonly willreturn
declare <vscale x 2 x i32> @llvm.masked.gather.nxv2i32.nxv2p0(<vscale x 2 x ptr>, i32 immarg, <vscale x 2 x i1>, <vscale x 2 x i32>) #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn writeonly
declare void @llvm.masked.scatter.nxv2i32.nxv2p0(<vscale x 2 x i32>, <vscale x 2 x ptr>, i32 immarg, <vscale x 2 x i1>) #11

attributes #0 = { noinline nounwind uwtable "frame-pointer"="non-leaf" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #3 = { nofree nounwind "frame-pointer"="non-leaf" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="generic" "target-features"="+neon,+v8a" }
attributes #4 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind willreturn writeonly }
attributes #6 = { nofree nounwind }
attributes #7 = { mustprogress nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { argmemonly mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #9 = { argmemonly mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #10 = { mustprogress nocallback nofree nosync nounwind readonly willreturn }
attributes #11 = { mustprogress nocallback nofree nosync nounwind willreturn writeonly }
attributes #12 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78}
!llvm.ident = !{!79}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "a", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!2 = distinct !DICompileUnit(language: DW_LANG_C99, file: !3, producer: "clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug, retainedTypes: !4, globals: !29, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "s253/tsvc-functions.c", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "612b3dc8754b54849135995eb8ec64b9")
!4 = !{!5, !6}
!5 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!6 = !DIDerivedType(tag: DW_TAG_typedef, name: "test_function_t", file: !3, line: 55, baseType: !7)
!7 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !8, size: 64)
!8 = !DISubroutineType(types: !9)
!9 = !{!10, !13}
!10 = !DIDerivedType(tag: DW_TAG_typedef, name: "real_t", file: !11, line: 23, baseType: !12)
!11 = !DIFile(filename: "s253/common.h", directory: "/home/rouzbeh/Graduate/LLVM/Active-Lane-Conslidation/Transformation-Pass/Vectorizer-Pass/test", checksumkind: CSK_MD5, checksum: "5ffc4849a08971f3312fdcdd05f02549")
!12 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!13 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !14, size: 64)
!14 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "args_t", file: !11, line: 12, size: 320, elements: !15)
!15 = !{!16, !26, !27}
!16 = !DIDerivedType(tag: DW_TAG_member, name: "t1", scope: !14, file: !11, line: 13, baseType: !17, size: 128)
!17 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timeval", file: !18, line: 8, size: 128, elements: !19)
!18 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types/struct_timeval.h", directory: "", checksumkind: CSK_MD5, checksum: "7798c68081a8161421218378689a8d48")
!19 = !{!20, !24}
!20 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !17, file: !18, line: 10, baseType: !21, size: 64)
!21 = !DIDerivedType(tag: DW_TAG_typedef, name: "__time_t", file: !22, line: 160, baseType: !23)
!22 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/bits/types.h", directory: "", checksumkind: CSK_MD5, checksum: "f6304b1a6dcfc6bee76e9a51043b5090")
!23 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!24 = !DIDerivedType(tag: DW_TAG_member, name: "tv_usec", scope: !17, file: !18, line: 11, baseType: !25, size: 64, offset: 64)
!25 = !DIDerivedType(tag: DW_TAG_typedef, name: "__suseconds_t", file: !22, line: 162, baseType: !23)
!26 = !DIDerivedType(tag: DW_TAG_member, name: "t2", scope: !14, file: !11, line: 14, baseType: !17, size: 128, offset: 128)
!27 = !DIDerivedType(tag: DW_TAG_member, name: "arg_info", scope: !14, file: !11, line: 15, baseType: !28, size: 64, offset: 256)
!28 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !5)
!29 = !{!30, !35, !0, !40, !42, !44, !46, !48, !53, !55, !57, !59, !62, !66}
!30 = !DIGlobalVariableExpression(var: !31, expr: !DIExpression())
!31 = distinct !DIGlobalVariable(name: "flat_2d_array", scope: !2, file: !3, line: 10, type: !32, isLocal: false, isDefinition: true, align: 512)
!32 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !33)
!33 = !{!34}
!34 = !DISubrange(count: 65536)
!35 = !DIGlobalVariableExpression(var: !36, expr: !DIExpression())
!36 = distinct !DIGlobalVariable(name: "x", scope: !2, file: !3, line: 12, type: !37, isLocal: false, isDefinition: true, align: 512)
!37 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 262144, elements: !38)
!38 = !{!39}
!39 = !DISubrange(count: 8192)
!40 = !DIGlobalVariableExpression(var: !41, expr: !DIExpression())
!41 = distinct !DIGlobalVariable(name: "b", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!42 = !DIGlobalVariableExpression(var: !43, expr: !DIExpression())
!43 = distinct !DIGlobalVariable(name: "c", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!44 = !DIGlobalVariableExpression(var: !45, expr: !DIExpression())
!45 = distinct !DIGlobalVariable(name: "d", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!46 = !DIGlobalVariableExpression(var: !47, expr: !DIExpression())
!47 = distinct !DIGlobalVariable(name: "e", scope: !2, file: !3, line: 14, type: !37, isLocal: false, isDefinition: true, align: 512)
!48 = !DIGlobalVariableExpression(var: !49, expr: !DIExpression())
!49 = distinct !DIGlobalVariable(name: "aa", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!50 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 2097152, elements: !51)
!51 = !{!52, !52}
!52 = !DISubrange(count: 256)
!53 = !DIGlobalVariableExpression(var: !54, expr: !DIExpression())
!54 = distinct !DIGlobalVariable(name: "bb", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!55 = !DIGlobalVariableExpression(var: !56, expr: !DIExpression())
!56 = distinct !DIGlobalVariable(name: "cc", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!57 = !DIGlobalVariableExpression(var: !58, expr: !DIExpression())
!58 = distinct !DIGlobalVariable(name: "tt", scope: !2, file: !3, line: 15, type: !50, isLocal: false, isDefinition: true, align: 512)
!59 = !DIGlobalVariableExpression(var: !60, expr: !DIExpression())
!60 = distinct !DIGlobalVariable(name: "indx", scope: !2, file: !3, line: 17, type: !61, isLocal: false, isDefinition: true, align: 512)
!61 = !DICompositeType(tag: DW_TAG_array_type, baseType: !12, size: 262144, elements: !38)
!62 = !DIGlobalVariableExpression(var: !63, expr: !DIExpression())
!63 = distinct !DIGlobalVariable(name: "xx", scope: !2, file: !3, line: 19, type: !64, isLocal: false, isDefinition: true)
!64 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !65)
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !10, size: 64)
!66 = !DIGlobalVariableExpression(var: !67, expr: !DIExpression())
!67 = distinct !DIGlobalVariable(name: "yy", scope: !2, file: !3, line: 20, type: !65, isLocal: false, isDefinition: true)
!68 = !{i32 7, !"Dwarf Version", i32 5}
!69 = !{i32 2, !"Debug Info Version", i32 3}
!70 = !{i32 1, !"wchar_size", i32 4}
!71 = !{i32 8, !"branch-target-enforcement", i32 0}
!72 = !{i32 8, !"sign-return-address", i32 0}
!73 = !{i32 8, !"sign-return-address-all", i32 0}
!74 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!75 = !{i32 7, !"PIC Level", i32 2}
!76 = !{i32 7, !"PIE Level", i32 2}
!77 = !{i32 7, !"uwtable", i32 2}
!78 = !{i32 7, !"frame-pointer", i32 1}
!79 = !{!"clang version 15.0.0 (https://www.github.com/llvm/llvm-project.git 61baf2ffa7071944c00a0642fdb9ff77d9cff0da)"}
!80 = distinct !DISubprogram(name: "s253", scope: !3, file: !3, line: 28, type: !81, scopeLine: 29, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !83)
!81 = !DISubroutineType(types: !82)
!82 = !{!12, !13}
!83 = !{!84, !85, !86, !88}
!84 = !DILocalVariable(name: "func_args", arg: 1, scope: !80, file: !3, line: 28, type: !13)
!85 = !DILocalVariable(name: "s", scope: !80, file: !3, line: 38, type: !12)
!86 = !DILocalVariable(name: "nl", scope: !87, file: !3, line: 39, type: !12)
!87 = distinct !DILexicalBlock(scope: !80, file: !3, line: 39, column: 5)
!88 = !DILocalVariable(name: "i", scope: !89, file: !3, line: 40, type: !12)
!89 = distinct !DILexicalBlock(scope: !90, file: !3, line: 40, column: 9)
!90 = distinct !DILexicalBlock(scope: !91, file: !3, line: 39, column: 45)
!91 = distinct !DILexicalBlock(scope: !87, file: !3, line: 39, column: 5)
!92 = !DILocation(line: 0, scope: !80)
!93 = !DILocation(line: 34, column: 5, scope: !80)
!94 = !DILocation(line: 35, column: 5, scope: !80)
!95 = !DILocation(line: 39, column: 5, scope: !87)
!96 = !DILocation(line: 0, scope: !87)
!97 = !DILocation(line: 0, scope: !89)
!98 = !DILocation(line: 40, column: 9, scope: !89)
!99 = !DILocation(line: 51, column: 30, scope: !80)
!100 = !DILocation(line: 51, column: 5, scope: !80)
!101 = !DILocation(line: 52, column: 12, scope: !80)
!102 = !DILocation(line: 52, column: 5, scope: !80)
!103 = !DILocation(line: 47, column: 9, scope: !90)
!104 = !DILocation(line: 39, column: 41, scope: !91)
!105 = !DILocation(line: 39, column: 25, scope: !91)
!106 = distinct !{!106, !95, !107, !108, !109}
!107 = !DILocation(line: 48, column: 5, scope: !87)
!108 = !{!"llvm.loop.mustprogress"}
!109 = !{!"llvm.loop.unroll.disable"}
!110 = !DILocation(line: 41, column: 17, scope: !111)
!111 = distinct !DILexicalBlock(scope: !112, file: !3, line: 41, column: 17)
!112 = distinct !DILexicalBlock(scope: !113, file: !3, line: 40, column: 42)
!113 = distinct !DILexicalBlock(scope: !89, file: !3, line: 40, column: 9)
!114 = !{!115, !115, i64 0}
!115 = !{!"int", !116, i64 0}
!116 = !{!"omnipotent char", !117, i64 0}
!117 = !{!"Simple C/C++ TBAA"}
!118 = !DILocation(line: 41, column: 24, scope: !111)
!119 = !DILocation(line: 41, column: 22, scope: !111)
!120 = !DILocation(line: 41, column: 17, scope: !112)
!121 = !DILocation(line: 42, column: 35, scope: !122)
!122 = distinct !DILexicalBlock(scope: !111, file: !3, line: 41, column: 30)
!123 = !DILocation(line: 42, column: 33, scope: !122)
!124 = !DILocation(line: 42, column: 26, scope: !122)
!125 = !DILocation(line: 43, column: 17, scope: !122)
!126 = !DILocation(line: 43, column: 22, scope: !122)
!127 = !DILocation(line: 44, column: 22, scope: !122)
!128 = !DILocation(line: 45, column: 13, scope: !122)
!129 = !DILocation(line: 40, column: 38, scope: !113)
!130 = !DILocation(line: 40, column: 27, scope: !113)
!131 = distinct !{!131, !98, !132, !108, !109}
!132 = !DILocation(line: 46, column: 9, scope: !89)
!133 = !DISubprogram(name: "initialise_arrays", scope: !11, file: !11, line: 31, type: !134, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!134 = !DISubroutineType(types: !135)
!135 = !{!12, !136}
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{}
!140 = !DISubprogram(name: "gettimeofday", scope: !141, file: !141, line: 66, type: !142, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!141 = !DIFile(filename: "/usr/lib/gcc-cross/aarch64-linux-gnu/9/../../../../aarch64-linux-gnu/include/sys/time.h", directory: "", checksumkind: CSK_MD5, checksum: "99ab902f1529d4d72694df20fbf7a8ec")
!142 = !DISubroutineType(types: !143)
!143 = !{!12, !144, !28}
!144 = !DIDerivedType(tag: DW_TAG_restrict_type, baseType: !145)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !17, size: 64)
!146 = !DISubprogram(name: "dummy", scope: !11, file: !11, line: 27, type: !147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!147 = !DISubroutineType(types: !148)
!148 = !{!12, !65, !65, !65, !65, !65, !149, !149, !149, !10}
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DICompositeType(tag: DW_TAG_array_type, baseType: !10, size: 8192, elements: !151)
!151 = !{!52}
!152 = !DISubprogram(name: "calc_checksum", scope: !11, file: !11, line: 32, type: !153, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized, retainedNodes: !139)
!153 = !DISubroutineType(types: !154)
!154 = !{!10, !136}
!155 = distinct !DISubprogram(name: "time_function", scope: !3, file: !3, line: 57, type: !156, scopeLine: 58, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !158)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !6, !5}
!158 = !{!159, !160, !161, !162, !164, !165, !166}
!159 = !DILocalVariable(name: "vector_func", arg: 1, scope: !155, file: !3, line: 57, type: !6)
!160 = !DILocalVariable(name: "arg_info", arg: 2, scope: !155, file: !3, line: 57, type: !5)
!161 = !DILocalVariable(name: "func_args", scope: !155, file: !3, line: 59, type: !14)
!162 = !DILocalVariable(name: "result", scope: !155, file: !3, line: 61, type: !163)
!163 = !DIBasicType(name: "double", size: 64, encoding: DW_ATE_float)
!164 = !DILocalVariable(name: "tic", scope: !155, file: !3, line: 63, type: !163)
!165 = !DILocalVariable(name: "toc", scope: !155, file: !3, line: 64, type: !163)
!166 = !DILocalVariable(name: "taken", scope: !155, file: !3, line: 66, type: !163)
!167 = !DILocation(line: 0, scope: !155)
!168 = !DILocation(line: 59, column: 5, scope: !155)
!169 = !DILocation(line: 59, column: 19, scope: !155)
!170 = !DILocation(line: 59, column: 31, scope: !155)
!171 = !{!172, !175, i64 32}
!172 = !{!"args_t", !173, i64 0, !173, i64 16, !175, i64 32}
!173 = !{!"timeval", !174, i64 0, !174, i64 8}
!174 = !{!"long", !116, i64 0}
!175 = !{!"any pointer", !116, i64 0}
!176 = !DILocation(line: 61, column: 21, scope: !155)
!177 = !DILocation(line: 63, column: 29, scope: !155)
!178 = !{!172, !174, i64 0}
!179 = !DILocation(line: 63, column: 16, scope: !155)
!180 = !DILocation(line: 63, column: 50, scope: !155)
!181 = !{!172, !174, i64 8}
!182 = !DILocation(line: 63, column: 37, scope: !155)
!183 = !DILocation(line: 63, column: 57, scope: !155)
!184 = !DILocation(line: 63, column: 35, scope: !155)
!185 = !DILocation(line: 64, column: 26, scope: !155)
!186 = !DILocation(line: 64, column: 29, scope: !155)
!187 = !{!172, !174, i64 16}
!188 = !DILocation(line: 64, column: 16, scope: !155)
!189 = !DILocation(line: 64, column: 50, scope: !155)
!190 = !{!172, !174, i64 24}
!191 = !DILocation(line: 64, column: 37, scope: !155)
!192 = !DILocation(line: 64, column: 57, scope: !155)
!193 = !DILocation(line: 64, column: 35, scope: !155)
!194 = !DILocation(line: 66, column: 23, scope: !155)
!195 = !DILocation(line: 68, column: 5, scope: !155)
!196 = !DILocation(line: 69, column: 1, scope: !155)
!197 = distinct !DISubprogram(name: "main", scope: !3, file: !3, line: 72, type: !198, scopeLine: 72, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !202)
!198 = !DISubroutineType(types: !199)
!199 = !{!12, !12, !200}
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!202 = !{!203, !204, !205, !206}
!203 = !DILocalVariable(name: "argc", arg: 1, scope: !197, file: !3, line: 72, type: !12)
!204 = !DILocalVariable(name: "argv", arg: 2, scope: !197, file: !3, line: 72, type: !200)
!205 = !DILocalVariable(name: "n1", scope: !197, file: !3, line: 73, type: !12)
!206 = !DILocalVariable(name: "n3", scope: !197, file: !3, line: 74, type: !12)
!207 = !DILocation(line: 0, scope: !197)
!208 = !DILocation(line: 75, column: 5, scope: !197)
!209 = !DILocation(line: 77, column: 5, scope: !197)
!210 = !DILocation(line: 78, column: 1, scope: !197)
