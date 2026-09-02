; ModuleID = 'sum.c'
source_filename = "sum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1

; Function Attrs: nofree norecurse nosync nounwind readnone uwtable
define dso_local i64 @sum_numbers(i64 noundef %0) local_unnamed_addr #0 {
  %2 = icmp slt i64 %0, 1
  br i1 %2, label %14, label %3

3:                                                ; preds = %1
  %4 = shl nuw i64 %0, 1
  %5 = add nsw i64 %0, -1
  %6 = zext i64 %5 to i65
  %7 = add nsw i64 %0, -2
  %8 = zext i64 %7 to i65
  %9 = mul i65 %6, %8
  %10 = lshr i65 %9, 1
  %11 = trunc i65 %10 to i64
  %12 = add i64 %4, %11
  %13 = add i64 %12, -1
  br label %14

14:                                               ; preds = %3, %1
  %15 = phi i64 [ 0, %1 ], [ %13, %3 ]
  ret i64 %15
}

; Function Attrs: nofree nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) local_unnamed_addr #1 {
  %3 = getelementptr inbounds ptr, ptr %1, i64 1
  %4 = load ptr, ptr %3, align 8, !tbaa !5
  %5 = tail call i64 @strtoll(ptr nocapture noundef %4, ptr noundef null, i32 noundef 10) #4
  %6 = icmp slt i64 %5, 1
  br i1 %6, label %18, label %7

7:                                                ; preds = %2
  %8 = shl nuw i64 %5, 1
  %9 = add nsw i64 %5, -1
  %10 = zext i64 %9 to i65
  %11 = add nsw i64 %5, -2
  %12 = zext i64 %11 to i65
  %13 = mul i65 %10, %12
  %14 = lshr i65 %13, 1
  %15 = trunc i65 %14 to i64
  %16 = add i64 %8, -1
  %17 = add i64 %16, %15
  br label %18

18:                                               ; preds = %2, %7
  %19 = phi i64 [ 0, %2 ], [ %17, %7 ]
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull @.str, i64 noundef %19)
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind willreturn
declare i64 @strtoll(ptr noundef readonly, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

attributes #0 = { nofree norecurse nosync nounwind readnone uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind uwtable "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{i32 7, !"PIE Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"clang version 15.0.6"}
!5 = !{!6, !6, i64 0}
!6 = !{!"any pointer", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C/C++ TBAA"}
