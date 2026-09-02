target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux"
declare  ccc i32 @memcmp(i8* , i8* , i64 )

declare  ccc i8* @memcpy(i8* , i8* , i64 )

declare  ccc i8* @memmove(i8* , i8* , i64 )

declare  ccc i8* @memset(i8* , i64 , i64 )

declare  ccc i64 @newSpark(i8* , i8* )

!0 = !{!"root" }
!1 = !{!"top", !0 }
!2 = !{!"stack", !1 }
!3 = !{!"heap", !1 }
!4 = !{!"rx", !3 }
!5 = !{!"base", !1 }
!llvm.module.flags = !{}
%r1lL_bytes_struct = type <{[5 x i8] }>
@r1lL_bytes$def = internal constant %r1lL_bytes_struct<{[5 x i8] [i8  77, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@r1lL_bytes = internal alias i8, bitcast (%r1lL_bytes_struct*  @r1lL_bytes$def to i8*)
%r1lJ_bytes_struct = type <{[5 x i8] }>
@r1lJ_bytes$def = internal constant %r1lJ_bytes_struct<{[5 x i8] [i8  109, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@r1lJ_bytes = internal alias i8, bitcast (%r1lJ_bytes_struct*  @r1lJ_bytes$def to i8*)
%_u1n0_srt_struct = type <{i64, i64, i64, i64 }>
%Main_sumNumbers_closure_struct = type <{i64, i64 }>
@_u1n0_srt$def = internal global %_u1n0_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczmprim_GHCziClasses_zdfOrdInt_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziNum_zdfNumInt_closure to i64), i64  0 }>, align 8
@_u1n0_srt = internal alias i8, bitcast (%_u1n0_srt_struct*  @_u1n0_srt$def to i8*)
@Main_sumNumbers_closure$def = internal global %Main_sumNumbers_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_sumNumbers_info$def to i64), i64  0 }>, align 8
@Main_sumNumbers_closure =  alias i8, bitcast (%Main_sumNumbers_closure_struct*  @Main_sumNumbers_closure$def to i8*)
@s1lU_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lU_info$def to i8*)
define internal ghccc void @s1lU_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  2, i32  18, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziNum_zdfNumInt_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lU_info$def to i64)) to i32),i32  0) }>
{
n1n1:
  %ls1lU = alloca i64, i32  1
  %ls1lQ = alloca i64, i32  1
  %ls1lP = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1mz
c1mz:
  %ln1n2 = load i64, i64*  %R1_Var
  store i64  %ln1n2, i64*  %ls1lU 
  %ln1n3 = load i64*, i64**  %Sp_Var
  %ln1n4 = getelementptr inbounds i64, i64*  %ln1n3, i32  1 
  %ln1n5 = ptrtoint i64* %ln1n4 to i64
  %ln1n6 = sub i64 %ln1n5, 48
  %ln1n7 = icmp ult i64 %ln1n6, %SpLim_Arg
  %ln1n9 = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1n7, i1  0  ) 
  br i1  %ln1n9, label  %c1mA, label  %c1mB
c1mB:
  %ln1nb = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1na = load i64*, i64**  %Sp_Var
  %ln1nc = getelementptr inbounds i64, i64*  %ln1na, i32  -2 
  store i64  %ln1nb, i64*  %ln1nc , !tbaa !2
  %ln1ne = load i64, i64*  %ls1lU
  %ln1nd = load i64*, i64**  %Sp_Var
  %ln1nf = getelementptr inbounds i64, i64*  %ln1nd, i32  -1 
  store i64  %ln1ne, i64*  %ln1nf , !tbaa !2
  %ln1ng = load i64, i64*  %ls1lU
  %ln1nh = add i64 %ln1ng, 16
  %ln1ni = inttoptr i64 %ln1nh to i64*
  %ln1nj = load i64, i64*  %ln1ni, !tbaa !1
  store i64  %ln1nj, i64*  %ls1lQ 
  %ln1nk = load i64, i64*  %ls1lU
  %ln1nl = add i64 %ln1nk, 24
  %ln1nm = inttoptr i64 %ln1nl to i64*
  %ln1nn = load i64, i64*  %ln1nm, !tbaa !1
  store i64  %ln1nn, i64*  %ls1lP 
  %ln1no = ptrtoint i8* @ghczminternal_GHCziInternalziNum_zdfNumInt_closure to i64
  store i64  %ln1no, i64*  %R2_Var 
  %ln1nq = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1np = load i64*, i64**  %Sp_Var
  %ln1nr = getelementptr inbounds i64, i64*  %ln1np, i32  -5 
  store i64  %ln1nq, i64*  %ln1nr , !tbaa !2
  %ln1nt = load i64, i64*  %ls1lQ
  %ln1ns = load i64*, i64**  %Sp_Var
  %ln1nu = getelementptr inbounds i64, i64*  %ln1ns, i32  -4 
  store i64  %ln1nt, i64*  %ln1nu , !tbaa !2
  %ln1nw = load i64, i64*  %ls1lP
  %ln1nv = load i64*, i64**  %Sp_Var
  %ln1nx = getelementptr inbounds i64, i64*  %ln1nv, i32  -3 
  store i64  %ln1nw, i64*  %ln1nx , !tbaa !2
  %ln1ny = load i64*, i64**  %Sp_Var
  %ln1nz = getelementptr inbounds i64, i64*  %ln1ny, i32  -5 
  %ln1nA = ptrtoint i64* %ln1nz to i64
  %ln1nB = inttoptr i64 %ln1nA to i64*
  store i64*  %ln1nB, i64**  %Sp_Var 
  %ln1nC = bitcast i8* @ghczminternal_GHCziInternalziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1nD = load i64*, i64**  %Sp_Var
  %ln1nE = load i64, i64*  %R1_Var
  %ln1nF = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1nC( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1nD, i64* noalias nocapture  %Hp_Arg, i64  %ln1nE, i64  %ln1nF, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1mA:
  %ln1nG = load i64, i64*  %ls1lU
  store i64  %ln1nG, i64*  %R1_Var 
  %ln1nH = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1nI = bitcast i64* %ln1nH to i64*
  %ln1nJ = load i64, i64*  %ln1nI, !tbaa !5
  %ln1nK = inttoptr i64 %ln1nJ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1nL = load i64*, i64**  %Sp_Var
  %ln1nM = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1nK( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1nL, i64* noalias nocapture  %Hp_Arg, i64  %ln1nM, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
declare  ccc i1 @llvm.expect.i1(i1 , i1 )

@s1lT_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lT_info$def to i8*)
define internal ghccc void @s1lT_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziNum_zdfNumInt_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lT_info$def to i64)) to i32),i32  0) }>
{
n1nN:
  %ls1lT = alloca i64, i32  1
  %ls1lP = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1mF
c1mF:
  %ln1nO = load i64, i64*  %R1_Var
  store i64  %ln1nO, i64*  %ls1lT 
  %ln1nP = load i64*, i64**  %Sp_Var
  %ln1nQ = getelementptr inbounds i64, i64*  %ln1nP, i32  1 
  %ln1nR = ptrtoint i64* %ln1nQ to i64
  %ln1nS = sub i64 %ln1nR, 48
  %ln1nT = icmp ult i64 %ln1nS, %SpLim_Arg
  %ln1nU = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1nT, i1  0  ) 
  br i1  %ln1nU, label  %c1mG, label  %c1mH
c1mH:
  %ln1nW = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1nV = load i64*, i64**  %Sp_Var
  %ln1nX = getelementptr inbounds i64, i64*  %ln1nV, i32  -2 
  store i64  %ln1nW, i64*  %ln1nX , !tbaa !2
  %ln1nZ = load i64, i64*  %ls1lT
  %ln1nY = load i64*, i64**  %Sp_Var
  %ln1o0 = getelementptr inbounds i64, i64*  %ln1nY, i32  -1 
  store i64  %ln1nZ, i64*  %ln1o0 , !tbaa !2
  %ln1o1 = load i64, i64*  %ls1lT
  %ln1o2 = add i64 %ln1o1, 16
  %ln1o3 = inttoptr i64 %ln1o2 to i64*
  %ln1o4 = load i64, i64*  %ln1o3, !tbaa !1
  store i64  %ln1o4, i64*  %ls1lP 
  %ln1o5 = ptrtoint i8* @ghczminternal_GHCziInternalziNum_zdfNumInt_closure to i64
  store i64  %ln1o5, i64*  %R2_Var 
  %ln1o7 = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1o6 = load i64*, i64**  %Sp_Var
  %ln1o8 = getelementptr inbounds i64, i64*  %ln1o6, i32  -5 
  store i64  %ln1o7, i64*  %ln1o8 , !tbaa !2
  %ln1oa = load i64, i64*  %ls1lP
  %ln1o9 = load i64*, i64**  %Sp_Var
  %ln1ob = getelementptr inbounds i64, i64*  %ln1o9, i32  -4 
  store i64  %ln1oa, i64*  %ln1ob , !tbaa !2
  %ln1od = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1oe = add i64 %ln1od, 273
  %ln1oc = load i64*, i64**  %Sp_Var
  %ln1of = getelementptr inbounds i64, i64*  %ln1oc, i32  -3 
  store i64  %ln1oe, i64*  %ln1of , !tbaa !2
  %ln1og = load i64*, i64**  %Sp_Var
  %ln1oh = getelementptr inbounds i64, i64*  %ln1og, i32  -5 
  %ln1oi = ptrtoint i64* %ln1oh to i64
  %ln1oj = inttoptr i64 %ln1oi to i64*
  store i64*  %ln1oj, i64**  %Sp_Var 
  %ln1ok = bitcast i8* @ghczminternal_GHCziInternalziNum_zp_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1ol = load i64*, i64**  %Sp_Var
  %ln1om = load i64, i64*  %R1_Var
  %ln1on = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1ok( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1ol, i64* noalias nocapture  %Hp_Arg, i64  %ln1om, i64  %ln1on, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1mG:
  %ln1oo = load i64, i64*  %ls1lT
  store i64  %ln1oo, i64*  %R1_Var 
  %ln1op = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1oq = bitcast i64* %ln1op to i64*
  %ln1or = load i64, i64*  %ln1oq, !tbaa !5
  %ln1os = inttoptr i64 %ln1or to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1ot = load i64*, i64**  %Sp_Var
  %ln1ou = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1os( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1ot, i64* noalias nocapture  %Hp_Arg, i64  %ln1ou, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@Main_sumNumbers_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_sumNumbers_info$def to i8*)
define  ghccc void @Main_sumNumbers_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967301, i64  0, i32  14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1n0_srt_struct*  @_u1n0_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_sumNumbers_info$def to i64)) to i32),i32  0) }>
{
n1ov:
  %ls1lN = alloca i64, i32  1
  %ls1lQ = alloca i64, i32  1
  %ls1lP = alloca i64, i32  1
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R2_Var = alloca i64, i32  1
  store i64  %R2_Arg, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1mI
c1mI:
  %ln1ow = load i64, i64*  %R2_Var
  store i64  %ln1ow, i64*  %ls1lN 
  %ln1ox = load i64*, i64**  %Sp_Var
  %ln1oy = getelementptr inbounds i64, i64*  %ln1ox, i32  1 
  %ln1oz = ptrtoint i64* %ln1oy to i64
  %ln1oA = sub i64 %ln1oz, 64
  %ln1oB = icmp ult i64 %ln1oA, %SpLim_Arg
  %ln1oC = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1oB, i1  0  ) 
  br i1  %ln1oC, label  %c1mJ, label  %c1mK
c1mK:
  %ln1oD = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1oE = add i64 %ln1oD, 257
  store i64  %ln1oE, i64*  %ls1lQ 
  %ln1oF = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1oG = add i64 %ln1oF, 273
  store i64  %ln1oG, i64*  %ls1lP 
  br label  %u1mW
u1mW:
  %ln1oI = load i64, i64*  %ls1lN
  %ln1oH = load i64*, i64**  %Sp_Var
  %ln1oJ = getelementptr inbounds i64, i64*  %ln1oH, i32  -3 
  store i64  %ln1oI, i64*  %ln1oJ , !tbaa !2
  %ln1oL = load i64, i64*  %ls1lP
  %ln1oK = load i64*, i64**  %Sp_Var
  %ln1oM = getelementptr inbounds i64, i64*  %ln1oK, i32  -2 
  store i64  %ln1oL, i64*  %ln1oM , !tbaa !2
  %ln1oO = load i64, i64*  %ls1lQ
  %ln1oN = load i64*, i64**  %Sp_Var
  %ln1oP = getelementptr inbounds i64, i64*  %ln1oN, i32  -1 
  store i64  %ln1oO, i64*  %ln1oP , !tbaa !2
  %ln1oQ = load i64*, i64**  %Sp_Var
  %ln1oR = getelementptr inbounds i64, i64*  %ln1oQ, i32  -3 
  %ln1oS = ptrtoint i64* %ln1oR to i64
  %ln1oT = inttoptr i64 %ln1oS to i64*
  store i64*  %ln1oT, i64**  %Sp_Var 
  br label  %u1mZ
u1mZ:
  %ln1oU = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @_blk_c1mo$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1oV = load i64*, i64**  %Sp_Var
  %ln1oW = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1oU( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1oV, i64* noalias nocapture  %Hp_Arg, i64  %ln1oW, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1mJ:
  %ln1oX = load i64, i64*  %ls1lN
  store i64  %ln1oX, i64*  %R2_Var 
  %ln1oY = ptrtoint %Main_sumNumbers_closure_struct* @Main_sumNumbers_closure$def to i64
  store i64  %ln1oY, i64*  %R1_Var 
  %ln1oZ = getelementptr inbounds i64, i64*  %Base_Arg, i32  -1 
  %ln1p0 = bitcast i64* %ln1oZ to i64*
  %ln1p1 = load i64, i64*  %ln1p0, !tbaa !5
  %ln1p2 = inttoptr i64 %ln1p1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1p3 = load i64*, i64**  %Sp_Var
  %ln1p4 = load i64, i64*  %R1_Var
  %ln1p5 = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1p2( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1p3, i64* noalias nocapture  %Hp_Arg, i64  %ln1p4, i64  %ln1p5, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@_blk_c1mo = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @_blk_c1mo$def to i8*)
define internal ghccc void @_blk_c1mo$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   
{
n1p6:
  %ls1lN = alloca i64, i32  1
  %ls1lP = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1mo
c1mo:
  %ln1p7 = load i64*, i64**  %Sp_Var
  %ln1p8 = getelementptr inbounds i64, i64*  %ln1p7, i32  0 
  %ln1p9 = bitcast i64* %ln1p8 to i64*
  %ln1pa = load i64, i64*  %ln1p9, !tbaa !2
  store i64  %ln1pa, i64*  %ls1lN 
  %ln1pb = load i64*, i64**  %Sp_Var
  %ln1pc = getelementptr inbounds i64, i64*  %ln1pb, i32  1 
  %ln1pd = bitcast i64* %ln1pc to i64*
  %ln1pe = load i64, i64*  %ln1pd, !tbaa !2
  store i64  %ln1pe, i64*  %ls1lP 
  %ln1pg = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c1mq_info$def to i64
  %ln1pf = load i64*, i64**  %Sp_Var
  %ln1ph = getelementptr inbounds i64, i64*  %ln1pf, i32  -1 
  store i64  %ln1pg, i64*  %ln1ph , !tbaa !2
  %ln1pi = ptrtoint i8* @ghczmprim_GHCziClasses_zdfOrdInt_closure to i64
  store i64  %ln1pi, i64*  %R2_Var 
  %ln1pk = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1pj = load i64*, i64**  %Sp_Var
  %ln1pl = getelementptr inbounds i64, i64*  %ln1pj, i32  -4 
  store i64  %ln1pk, i64*  %ln1pl , !tbaa !2
  %ln1pn = load i64, i64*  %ls1lP
  %ln1pm = load i64*, i64**  %Sp_Var
  %ln1po = getelementptr inbounds i64, i64*  %ln1pm, i32  -3 
  store i64  %ln1pn, i64*  %ln1po , !tbaa !2
  %ln1pq = load i64, i64*  %ls1lN
  %ln1pp = load i64*, i64**  %Sp_Var
  %ln1pr = getelementptr inbounds i64, i64*  %ln1pp, i32  -2 
  store i64  %ln1pq, i64*  %ln1pr , !tbaa !2
  %ln1ps = load i64*, i64**  %Sp_Var
  %ln1pt = getelementptr inbounds i64, i64*  %ln1ps, i32  -4 
  %ln1pu = ptrtoint i64* %ln1pt to i64
  %ln1pv = inttoptr i64 %ln1pu to i64*
  store i64*  %ln1pv, i64**  %Sp_Var 
  %ln1pw = bitcast i8* @ghczmprim_GHCziClasses_zg_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1px = load i64*, i64**  %Sp_Var
  %ln1py = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1pw( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1px, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %ln1py, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c1mq_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c1mq_info$def to i8*)
define internal ghccc void @c1mq_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  3, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1n0_srt_struct*  @_u1n0_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c1mq_info$def to i64)) to i32),i32  0) }>
{
n1pz:
  %ls1lP = alloca i64, i32  1
  %ls1lQ = alloca i64, i32  1
  %ls1lR = alloca i64, i32  1
  %lc1mV = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %lc1mu = alloca i64, i32  1
  %lc1mw = alloca i64, i32  1
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1mq
c1mq:
  %ln1pA = load i64*, i64**  %Sp_Var
  %ln1pB = getelementptr inbounds i64, i64*  %ln1pA, i32  2 
  %ln1pC = bitcast i64* %ln1pB to i64*
  %ln1pD = load i64, i64*  %ln1pC, !tbaa !2
  store i64  %ln1pD, i64*  %ls1lP 
  %ln1pE = load i64*, i64**  %Sp_Var
  %ln1pF = getelementptr inbounds i64, i64*  %ln1pE, i32  3 
  %ln1pG = bitcast i64* %ln1pF to i64*
  %ln1pH = load i64, i64*  %ln1pG, !tbaa !2
  store i64  %ln1pH, i64*  %ls1lQ 
  %ln1pI = load i64, i64*  %R1_Var
  store i64  %ln1pI, i64*  %ls1lR 
  %ln1pJ = load i64, i64*  %ls1lR
  %ln1pK = and i64 %ln1pJ, 7
  store i64  %ln1pK, i64*  %lc1mV 
  %ln1pL = load i64, i64*  %lc1mV
switch i64  %ln1pL, label  %c1mN [
  i64  1, label  %c1mN
  i64  2, label  %c1mU
]
c1mN:
  %ln1pM = load i64*, i64**  %Hp_Var
  %ln1pN = getelementptr inbounds i64, i64*  %ln1pM, i32  7 
  %ln1pO = ptrtoint i64* %ln1pN to i64
  %ln1pP = inttoptr i64 %ln1pO to i64*
  store i64*  %ln1pP, i64**  %Hp_Var 
  %ln1pQ = load i64*, i64**  %Hp_Var
  %ln1pR = ptrtoint i64* %ln1pQ to i64
  %ln1pS = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1pT = bitcast i64* %ln1pS to i64*
  %ln1pU = load i64, i64*  %ln1pT, !tbaa !5
  %ln1pV = icmp ugt i64 %ln1pR, %ln1pU
  %ln1pW = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1pV, i1  0  ) 
  br i1  %ln1pW, label  %c1mQ, label  %c1mP
c1mP:
  %ln1pY = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1lU_info$def to i64
  %ln1pX = load i64*, i64**  %Hp_Var
  %ln1pZ = getelementptr inbounds i64, i64*  %ln1pX, i32  -6 
  store i64  %ln1pY, i64*  %ln1pZ , !tbaa !3
  %ln1q1 = load i64, i64*  %ls1lQ
  %ln1q0 = load i64*, i64**  %Hp_Var
  %ln1q2 = getelementptr inbounds i64, i64*  %ln1q0, i32  -4 
  store i64  %ln1q1, i64*  %ln1q2 , !tbaa !3
  %ln1q4 = load i64, i64*  %ls1lP
  %ln1q3 = load i64*, i64**  %Hp_Var
  %ln1q5 = getelementptr inbounds i64, i64*  %ln1q3, i32  -3 
  store i64  %ln1q4, i64*  %ln1q5 , !tbaa !3
  %ln1q6 = load i64*, i64**  %Hp_Var
  %ln1q7 = getelementptr inbounds i64, i64*  %ln1q6, i32  -6 
  %ln1q8 = ptrtoint i64* %ln1q7 to i64
  store i64  %ln1q8, i64*  %lc1mu 
  %ln1qa = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1lT_info$def to i64
  %ln1q9 = load i64*, i64**  %Hp_Var
  %ln1qb = getelementptr inbounds i64, i64*  %ln1q9, i32  -2 
  store i64  %ln1qa, i64*  %ln1qb , !tbaa !3
  %ln1qd = load i64, i64*  %ls1lP
  %ln1qc = load i64*, i64**  %Hp_Var
  %ln1qe = getelementptr inbounds i64, i64*  %ln1qc, i32  0 
  store i64  %ln1qd, i64*  %ln1qe , !tbaa !3
  %ln1qf = load i64*, i64**  %Hp_Var
  %ln1qg = getelementptr inbounds i64, i64*  %ln1qf, i32  -2 
  %ln1qh = ptrtoint i64* %ln1qg to i64
  store i64  %ln1qh, i64*  %lc1mw 
  %ln1qi = load i64, i64*  %lc1mu
  store i64  %ln1qi, i64*  %ls1lQ 
  %ln1qj = load i64, i64*  %lc1mw
  store i64  %ln1qj, i64*  %ls1lP 
  br label  %u1mX
u1mX:
  %ln1ql = load i64, i64*  %ls1lP
  %ln1qk = load i64*, i64**  %Sp_Var
  %ln1qm = getelementptr inbounds i64, i64*  %ln1qk, i32  2 
  store i64  %ln1ql, i64*  %ln1qm , !tbaa !2
  %ln1qo = load i64, i64*  %ls1lQ
  %ln1qn = load i64*, i64**  %Sp_Var
  %ln1qp = getelementptr inbounds i64, i64*  %ln1qn, i32  3 
  store i64  %ln1qo, i64*  %ln1qp , !tbaa !2
  %ln1qq = load i64*, i64**  %Sp_Var
  %ln1qr = getelementptr inbounds i64, i64*  %ln1qq, i32  1 
  %ln1qs = ptrtoint i64* %ln1qr to i64
  %ln1qt = inttoptr i64 %ln1qs to i64*
  store i64*  %ln1qt, i64**  %Sp_Var 
  br label  %u1mY
u1mY:
  %ln1qu = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @_blk_c1mo$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1qv = load i64*, i64**  %Sp_Var
  %ln1qw = load i64*, i64**  %Hp_Var
  %ln1qx = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1qu( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1qv, i64* noalias nocapture  %ln1qw, i64  %ln1qx, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1mQ:
  %ln1qy = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  56, i64*  %ln1qy , !tbaa !5
  %ln1qz = load i64, i64*  %ls1lR
  store i64  %ln1qz, i64*  %R1_Var 
  %ln1qA = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1qB = load i64*, i64**  %Sp_Var
  %ln1qC = load i64*, i64**  %Hp_Var
  %ln1qD = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1qA( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1qB, i64* noalias nocapture  %ln1qC, i64  %ln1qD, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1mU:
  %ln1qE = load i64, i64*  %ls1lQ
  %ln1qF = and i64 %ln1qE, -8
  store i64  %ln1qF, i64*  %R1_Var 
  %ln1qG = load i64*, i64**  %Sp_Var
  %ln1qH = getelementptr inbounds i64, i64*  %ln1qG, i32  4 
  %ln1qI = ptrtoint i64* %ln1qH to i64
  %ln1qJ = inttoptr i64 %ln1qI to i64*
  store i64*  %ln1qJ, i64**  %Sp_Var 
  %ln1qL = load i64, i64*  %R1_Var
  %ln1qM = inttoptr i64 %ln1qL to i64*
  %ln1qN = load i64, i64*  %ln1qM, !tbaa !4
  %ln1qO = inttoptr i64 %ln1qN to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1qP = load i64*, i64**  %Sp_Var
  %ln1qQ = load i64*, i64**  %Hp_Var
  %ln1qR = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1qO( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1qP, i64* noalias nocapture  %ln1qQ, i64  %ln1qR, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%r1lK_closure_struct = type <{i64, i64 }>
@r1lK_closure$def = internal global %r1lK_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r1lJ_bytes_struct*  @r1lJ_bytes$def to i64) }>, align 8
@r1lK_closure = internal alias i8, bitcast (%r1lK_closure_struct*  @r1lK_closure$def to i8*)
%r1lM_closure_struct = type <{i64, i64 }>
@r1lM_closure$def = internal global %r1lM_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%r1lL_bytes_struct*  @r1lL_bytes$def to i64) }>, align 8
@r1lM_closure = internal alias i8, bitcast (%r1lM_closure_struct*  @r1lM_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64 }>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%r1lK_closure_struct*  @r1lK_closure$def to i64),i64  1), i64 add (i64 ptrtoint (%r1lM_closure_struct*  @r1lM_closure$def to i64),i64  1), i64  3 }>, align 8
@Main_zdtrModule_closure =  alias i8, bitcast (%Main_zdtrModule_closure_struct*  @Main_zdtrModule_closure$def to i8*)
%_u1sd_srt_struct = type <{i64, i64, i64, i64, i64 }>
%_u1se_srt_struct = type <{i64, i64, i64, i64 }>
%_u1sf_srt_struct = type <{i64, i64, i64, i64, i64 }>
%_u1sg_srt_struct = type <{i64, i64, i64, i64 }>
%c1rg_str_struct = type <{[7 x i8] }>
%c1rp_str_struct = type <{[5 x i8] }>
%c1ry_str_struct = type <{[5 x i8] }>
%c1rI_str_struct = type <{[5 x i8] }>
%s1mg_closure_struct = type <{i64, i64, i64, i64, i64 }>
@_u1sd_srt$def = internal global %_u1sd_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_3_info to i64), i64 ptrtoint (i8*  @ghczmprim_GHCziCString_unpackCStringzh_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziStackziTypes_emptyCallStack_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziStackziTypes_pushCallStack_closure to i64), i64  0 }>, align 8
@_u1sd_srt = internal alias i8, bitcast (%_u1sd_srt_struct*  @_u1sd_srt$def to i8*)
@_u1se_srt$def = internal global %_u1se_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziList_head_closure to i64), i64 ptrtoint (i8*  @_u1sd_srt to i64), i64  0 }>, align 8
@_u1se_srt = internal alias i8, bitcast (%_u1se_srt_struct*  @_u1se_srt$def to i8*)
@_u1sf_srt$def = internal global %_u1sf_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_3_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTextziRead_read_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziRead_zdfReadInt_closure to i64), i64 ptrtoint (i8*  @_u1se_srt to i64), i64  0 }>, align 8
@_u1sf_srt = internal alias i8, bitcast (%_u1sf_srt_struct*  @_u1sf_srt$def to i8*)
@_u1sg_srt$def = internal global %_u1sg_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (%Main_sumNumbers_closure_struct*  @Main_sumNumbers_closure$def to i64), i64 ptrtoint (i8*  @_u1sf_srt to i64), i64  0 }>, align 8
@_u1sg_srt = internal alias i8, bitcast (%_u1sg_srt_struct*  @_u1sg_srt$def to i8*)
@c1rg_str$def = internal constant %c1rg_str_struct<{[7 x i8] [i8  83, i8  117, i8  109, i8  46, i8  104, i8  115, i8  0 ] }>, align 1
@c1rg_str = internal alias i8, bitcast (%c1rg_str_struct*  @c1rg_str$def to i8*)
@c1rp_str$def = internal constant %c1rp_str_struct<{[5 x i8] [i8  77, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@c1rp_str = internal alias i8, bitcast (%c1rp_str_struct*  @c1rp_str$def to i8*)
@c1ry_str$def = internal constant %c1ry_str_struct<{[5 x i8] [i8  109, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@c1ry_str = internal alias i8, bitcast (%c1ry_str_struct*  @c1ry_str$def to i8*)
@c1rI_str$def = internal constant %c1rI_str_struct<{[5 x i8] [i8  104, i8  101, i8  97, i8  100, i8  0 ] }>, align 1
@c1rI_str = internal alias i8, bitcast (%c1rI_str_struct*  @c1rI_str$def to i8*)
@s1mg_closure$def = internal global %s1mg_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mg_info$def to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziSystemziIO_print_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziShow_zdfShowInt_closure to i64), i64 ptrtoint (i8*  @_u1sg_srt to i64), i64  0 }>, align 8
@s1mg_closure = internal alias i8, bitcast (%s1mg_closure_struct*  @s1mg_closure$def to i8*)
@s1m5_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m5_info$def to i8*)
define internal ghccc void @s1m5_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m5_info$def to i64)) to i32),i32  0) }>
{
n1sh:
  %ls1m5 = alloca i64, i32  1
  %ls1m4 = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1ri
c1ri:
  %ln1si = load i64, i64*  %R1_Var
  store i64  %ln1si, i64*  %ls1m5 
  %ln1sj = load i64*, i64**  %Sp_Var
  %ln1sk = getelementptr inbounds i64, i64*  %ln1sj, i32  1 
  %ln1sl = ptrtoint i64* %ln1sk to i64
  %ln1sm = sub i64 %ln1sl, 24
  %ln1sn = icmp ult i64 %ln1sm, %SpLim_Arg
  %ln1so = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1sn, i1  0  ) 
  br i1  %ln1so, label  %c1rj, label  %c1rk
c1rk:
  %ln1sq = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1sp = load i64*, i64**  %Sp_Var
  %ln1sr = getelementptr inbounds i64, i64*  %ln1sp, i32  -2 
  store i64  %ln1sq, i64*  %ln1sr , !tbaa !2
  %ln1st = load i64, i64*  %ls1m5
  %ln1ss = load i64*, i64**  %Sp_Var
  %ln1su = getelementptr inbounds i64, i64*  %ln1ss, i32  -1 
  store i64  %ln1st, i64*  %ln1su , !tbaa !2
  %ln1sv = ptrtoint %c1rg_str_struct* @c1rg_str$def to i64
  store i64  %ln1sv, i64*  %ls1m4 
  %ln1sw = load i64, i64*  %ls1m4
  store i64  %ln1sw, i64*  %R2_Var 
  %ln1sx = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64  %ln1sx, i64*  %R1_Var 
  %ln1sy = load i64*, i64**  %Sp_Var
  %ln1sz = getelementptr inbounds i64, i64*  %ln1sy, i32  -2 
  %ln1sA = ptrtoint i64* %ln1sz to i64
  %ln1sB = inttoptr i64 %ln1sA to i64*
  store i64*  %ln1sB, i64**  %Sp_Var 
  %ln1sC = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1sD = load i64*, i64**  %Sp_Var
  %ln1sE = load i64, i64*  %R1_Var
  %ln1sF = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1sC( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1sD, i64* noalias nocapture  %Hp_Arg, i64  %ln1sE, i64  %ln1sF, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rj:
  %ln1sG = load i64, i64*  %ls1m5
  store i64  %ln1sG, i64*  %R1_Var 
  %ln1sH = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1sI = bitcast i64* %ln1sH to i64*
  %ln1sJ = load i64, i64*  %ln1sI, !tbaa !5
  %ln1sK = inttoptr i64 %ln1sJ to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1sL = load i64*, i64**  %Sp_Var
  %ln1sM = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1sK( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1sL, i64* noalias nocapture  %Hp_Arg, i64  %ln1sM, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1m3_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m3_info$def to i8*)
define internal ghccc void @s1m3_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m3_info$def to i64)) to i32),i32  0) }>
{
n1sN:
  %ls1m3 = alloca i64, i32  1
  %ls1m2 = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rr
c1rr:
  %ln1sO = load i64, i64*  %R1_Var
  store i64  %ln1sO, i64*  %ls1m3 
  %ln1sP = load i64*, i64**  %Sp_Var
  %ln1sQ = getelementptr inbounds i64, i64*  %ln1sP, i32  1 
  %ln1sR = ptrtoint i64* %ln1sQ to i64
  %ln1sS = sub i64 %ln1sR, 24
  %ln1sT = icmp ult i64 %ln1sS, %SpLim_Arg
  %ln1sU = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1sT, i1  0  ) 
  br i1  %ln1sU, label  %c1rs, label  %c1rt
c1rt:
  %ln1sW = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1sV = load i64*, i64**  %Sp_Var
  %ln1sX = getelementptr inbounds i64, i64*  %ln1sV, i32  -2 
  store i64  %ln1sW, i64*  %ln1sX , !tbaa !2
  %ln1sZ = load i64, i64*  %ls1m3
  %ln1sY = load i64*, i64**  %Sp_Var
  %ln1t0 = getelementptr inbounds i64, i64*  %ln1sY, i32  -1 
  store i64  %ln1sZ, i64*  %ln1t0 , !tbaa !2
  %ln1t1 = ptrtoint %c1rp_str_struct* @c1rp_str$def to i64
  store i64  %ln1t1, i64*  %ls1m2 
  %ln1t2 = load i64, i64*  %ls1m2
  store i64  %ln1t2, i64*  %R2_Var 
  %ln1t3 = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64  %ln1t3, i64*  %R1_Var 
  %ln1t4 = load i64*, i64**  %Sp_Var
  %ln1t5 = getelementptr inbounds i64, i64*  %ln1t4, i32  -2 
  %ln1t6 = ptrtoint i64* %ln1t5 to i64
  %ln1t7 = inttoptr i64 %ln1t6 to i64*
  store i64*  %ln1t7, i64**  %Sp_Var 
  %ln1t8 = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1t9 = load i64*, i64**  %Sp_Var
  %ln1ta = load i64, i64*  %R1_Var
  %ln1tb = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1t8( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1t9, i64* noalias nocapture  %Hp_Arg, i64  %ln1ta, i64  %ln1tb, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rs:
  %ln1tc = load i64, i64*  %ls1m3
  store i64  %ln1tc, i64*  %R1_Var 
  %ln1td = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1te = bitcast i64* %ln1td to i64*
  %ln1tf = load i64, i64*  %ln1te, !tbaa !5
  %ln1tg = inttoptr i64 %ln1tf to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1th = load i64*, i64**  %Sp_Var
  %ln1ti = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1tg( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1th, i64* noalias nocapture  %Hp_Arg, i64  %ln1ti, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1m1_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m1_info$def to i8*)
define internal ghccc void @s1m1_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1m1_info$def to i64)) to i32),i32  0) }>
{
n1tj:
  %ls1m1 = alloca i64, i32  1
  %ls1m0 = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rA
c1rA:
  %ln1tk = load i64, i64*  %R1_Var
  store i64  %ln1tk, i64*  %ls1m1 
  %ln1tl = load i64*, i64**  %Sp_Var
  %ln1tm = getelementptr inbounds i64, i64*  %ln1tl, i32  1 
  %ln1tn = ptrtoint i64* %ln1tm to i64
  %ln1to = sub i64 %ln1tn, 24
  %ln1tp = icmp ult i64 %ln1to, %SpLim_Arg
  %ln1tq = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1tp, i1  0  ) 
  br i1  %ln1tq, label  %c1rB, label  %c1rC
c1rC:
  %ln1ts = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1tr = load i64*, i64**  %Sp_Var
  %ln1tt = getelementptr inbounds i64, i64*  %ln1tr, i32  -2 
  store i64  %ln1ts, i64*  %ln1tt , !tbaa !2
  %ln1tv = load i64, i64*  %ls1m1
  %ln1tu = load i64*, i64**  %Sp_Var
  %ln1tw = getelementptr inbounds i64, i64*  %ln1tu, i32  -1 
  store i64  %ln1tv, i64*  %ln1tw , !tbaa !2
  %ln1tx = ptrtoint %c1ry_str_struct* @c1ry_str$def to i64
  store i64  %ln1tx, i64*  %ls1m0 
  %ln1ty = load i64, i64*  %ls1m0
  store i64  %ln1ty, i64*  %R2_Var 
  %ln1tz = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64  %ln1tz, i64*  %R1_Var 
  %ln1tA = load i64*, i64**  %Sp_Var
  %ln1tB = getelementptr inbounds i64, i64*  %ln1tA, i32  -2 
  %ln1tC = ptrtoint i64* %ln1tB to i64
  %ln1tD = inttoptr i64 %ln1tC to i64*
  store i64*  %ln1tD, i64**  %Sp_Var 
  %ln1tE = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1tF = load i64*, i64**  %Sp_Var
  %ln1tG = load i64, i64*  %R1_Var
  %ln1tH = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1tE( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1tF, i64* noalias nocapture  %Hp_Arg, i64  %ln1tG, i64  %ln1tH, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rB:
  %ln1tI = load i64, i64*  %ls1m1
  store i64  %ln1tI, i64*  %R1_Var 
  %ln1tJ = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1tK = bitcast i64* %ln1tJ to i64*
  %ln1tL = load i64, i64*  %ln1tK, !tbaa !5
  %ln1tM = inttoptr i64 %ln1tL to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1tN = load i64*, i64**  %Sp_Var
  %ln1tO = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1tM( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1tN, i64* noalias nocapture  %Hp_Arg, i64  %ln1tO, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1lZ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lZ_info$def to i8*)
define internal ghccc void @s1lZ_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (i8*  @ghczmprim_GHCziCString_unpackCStringzh_closure to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1lZ_info$def to i64)) to i32),i32  0) }>
{
n1tP:
  %ls1lZ = alloca i64, i32  1
  %ls1lY = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rK
c1rK:
  %ln1tQ = load i64, i64*  %R1_Var
  store i64  %ln1tQ, i64*  %ls1lZ 
  %ln1tR = load i64*, i64**  %Sp_Var
  %ln1tS = getelementptr inbounds i64, i64*  %ln1tR, i32  1 
  %ln1tT = ptrtoint i64* %ln1tS to i64
  %ln1tU = sub i64 %ln1tT, 24
  %ln1tV = icmp ult i64 %ln1tU, %SpLim_Arg
  %ln1tW = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1tV, i1  0  ) 
  br i1  %ln1tW, label  %c1rL, label  %c1rM
c1rM:
  %ln1tY = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1tX = load i64*, i64**  %Sp_Var
  %ln1tZ = getelementptr inbounds i64, i64*  %ln1tX, i32  -2 
  store i64  %ln1tY, i64*  %ln1tZ , !tbaa !2
  %ln1u1 = load i64, i64*  %ls1lZ
  %ln1u0 = load i64*, i64**  %Sp_Var
  %ln1u2 = getelementptr inbounds i64, i64*  %ln1u0, i32  -1 
  store i64  %ln1u1, i64*  %ln1u2 , !tbaa !2
  %ln1u3 = ptrtoint %c1rI_str_struct* @c1rI_str$def to i64
  store i64  %ln1u3, i64*  %ls1lY 
  %ln1u4 = load i64, i64*  %ls1lY
  store i64  %ln1u4, i64*  %R2_Var 
  %ln1u5 = ptrtoint i8* @ghczmprim_GHCziCString_unpackCStringzh_closure to i64
  store i64  %ln1u5, i64*  %R1_Var 
  %ln1u6 = load i64*, i64**  %Sp_Var
  %ln1u7 = getelementptr inbounds i64, i64*  %ln1u6, i32  -2 
  %ln1u8 = ptrtoint i64* %ln1u7 to i64
  %ln1u9 = inttoptr i64 %ln1u8 to i64*
  store i64*  %ln1u9, i64**  %Sp_Var 
  %ln1ua = bitcast i8* @stg_ap_n_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1ub = load i64*, i64**  %Sp_Var
  %ln1uc = load i64, i64*  %R1_Var
  %ln1ud = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1ua( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1ub, i64* noalias nocapture  %Hp_Arg, i64  %ln1uc, i64  %ln1ud, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rL:
  %ln1ue = load i64, i64*  %ls1lZ
  store i64  %ln1ue, i64*  %R1_Var 
  %ln1uf = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1ug = bitcast i64* %ln1uf to i64*
  %ln1uh = load i64, i64*  %ln1ug, !tbaa !5
  %ln1ui = inttoptr i64 %ln1uh to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1uj = load i64*, i64**  %Sp_Var
  %ln1uk = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1ui( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1uj, i64* noalias nocapture  %Hp_Arg, i64  %ln1uk, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1mc_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mc_info$def to i8*)
define internal ghccc void @s1mc_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  15, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1sd_srt_struct*  @_u1sd_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mc_info$def to i64)) to i32),i32  0) }>
{
n1ul:
  %ls1mc = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %lc1rc = alloca i64, i32  1
  %lc1rl = alloca i64, i32  1
  %lc1ru = alloca i64, i32  1
  %lc1rD = alloca i64, i32  1
  %lc1rE = alloca i64, i32  1
  %lc1rN = alloca i64, i32  1
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rO
c1rO:
  %ln1um = load i64, i64*  %R1_Var
  store i64  %ln1um, i64*  %ls1mc 
  %ln1un = load i64*, i64**  %Sp_Var
  %ln1uo = getelementptr inbounds i64, i64*  %ln1un, i32  1 
  %ln1up = ptrtoint i64* %ln1uo to i64
  %ln1uq = sub i64 %ln1up, 24
  %ln1ur = icmp ult i64 %ln1uq, %SpLim_Arg
  %ln1us = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1ur, i1  0  ) 
  br i1  %ln1us, label  %c1rP, label  %c1rQ
c1rQ:
  %ln1ut = load i64*, i64**  %Hp_Var
  %ln1uu = getelementptr inbounds i64, i64*  %ln1ut, i32  19 
  %ln1uv = ptrtoint i64* %ln1uu to i64
  %ln1uw = inttoptr i64 %ln1uv to i64*
  store i64*  %ln1uw, i64**  %Hp_Var 
  %ln1ux = load i64*, i64**  %Hp_Var
  %ln1uy = ptrtoint i64* %ln1ux to i64
  %ln1uz = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1uA = bitcast i64* %ln1uz to i64*
  %ln1uB = load i64, i64*  %ln1uA, !tbaa !5
  %ln1uC = icmp ugt i64 %ln1uy, %ln1uB
  %ln1uD = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1uC, i1  0  ) 
  br i1  %ln1uD, label  %c1rS, label  %c1rR
c1rR:
  %ln1uF = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1uE = load i64*, i64**  %Sp_Var
  %ln1uG = getelementptr inbounds i64, i64*  %ln1uE, i32  -2 
  store i64  %ln1uF, i64*  %ln1uG , !tbaa !2
  %ln1uI = load i64, i64*  %ls1mc
  %ln1uH = load i64*, i64**  %Sp_Var
  %ln1uJ = getelementptr inbounds i64, i64*  %ln1uH, i32  -1 
  store i64  %ln1uI, i64*  %ln1uJ , !tbaa !2
  %ln1uL = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1m5_info$def to i64
  %ln1uK = load i64*, i64**  %Hp_Var
  %ln1uM = getelementptr inbounds i64, i64*  %ln1uK, i32  -18 
  store i64  %ln1uL, i64*  %ln1uM , !tbaa !3
  %ln1uN = load i64*, i64**  %Hp_Var
  %ln1uO = getelementptr inbounds i64, i64*  %ln1uN, i32  -18 
  %ln1uP = ptrtoint i64* %ln1uO to i64
  store i64  %ln1uP, i64*  %lc1rc 
  %ln1uR = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1m3_info$def to i64
  %ln1uQ = load i64*, i64**  %Hp_Var
  %ln1uS = getelementptr inbounds i64, i64*  %ln1uQ, i32  -16 
  store i64  %ln1uR, i64*  %ln1uS , !tbaa !3
  %ln1uT = load i64*, i64**  %Hp_Var
  %ln1uU = getelementptr inbounds i64, i64*  %ln1uT, i32  -16 
  %ln1uV = ptrtoint i64* %ln1uU to i64
  store i64  %ln1uV, i64*  %lc1rl 
  %ln1uX = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1m1_info$def to i64
  %ln1uW = load i64*, i64**  %Hp_Var
  %ln1uY = getelementptr inbounds i64, i64*  %ln1uW, i32  -14 
  store i64  %ln1uX, i64*  %ln1uY , !tbaa !3
  %ln1uZ = load i64*, i64**  %Hp_Var
  %ln1v0 = getelementptr inbounds i64, i64*  %ln1uZ, i32  -14 
  %ln1v1 = ptrtoint i64* %ln1v0 to i64
  store i64  %ln1v1, i64*  %lc1ru 
  %ln1v3 = ptrtoint i8* @ghczminternal_GHCziInternalziStackziTypes_SrcLoc_con_info to i64
  %ln1v2 = load i64*, i64**  %Hp_Var
  %ln1v4 = getelementptr inbounds i64, i64*  %ln1v2, i32  -12 
  store i64  %ln1v3, i64*  %ln1v4 , !tbaa !3
  %ln1v6 = load i64, i64*  %lc1ru
  %ln1v5 = load i64*, i64**  %Hp_Var
  %ln1v7 = getelementptr inbounds i64, i64*  %ln1v5, i32  -11 
  store i64  %ln1v6, i64*  %ln1v7 , !tbaa !3
  %ln1v9 = load i64, i64*  %lc1rl
  %ln1v8 = load i64*, i64**  %Hp_Var
  %ln1va = getelementptr inbounds i64, i64*  %ln1v8, i32  -10 
  store i64  %ln1v9, i64*  %ln1va , !tbaa !3
  %ln1vc = load i64, i64*  %lc1rc
  %ln1vb = load i64*, i64**  %Hp_Var
  %ln1vd = getelementptr inbounds i64, i64*  %ln1vb, i32  -9 
  store i64  %ln1vc, i64*  %ln1vd , !tbaa !3
  %ln1vf = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1vg = add i64 %ln1vf, 497
  %ln1ve = load i64*, i64**  %Hp_Var
  %ln1vh = getelementptr inbounds i64, i64*  %ln1ve, i32  -8 
  store i64  %ln1vg, i64*  %ln1vh , !tbaa !3
  %ln1vj = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1vk = add i64 %ln1vj, 561
  %ln1vi = load i64*, i64**  %Hp_Var
  %ln1vl = getelementptr inbounds i64, i64*  %ln1vi, i32  -7 
  store i64  %ln1vk, i64*  %ln1vl , !tbaa !3
  %ln1vn = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1vo = add i64 %ln1vn, 497
  %ln1vm = load i64*, i64**  %Hp_Var
  %ln1vp = getelementptr inbounds i64, i64*  %ln1vm, i32  -6 
  store i64  %ln1vo, i64*  %ln1vp , !tbaa !3
  %ln1vr = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln1vs = add i64 %ln1vr, 625
  %ln1vq = load i64*, i64**  %Hp_Var
  %ln1vt = getelementptr inbounds i64, i64*  %ln1vq, i32  -5 
  store i64  %ln1vs, i64*  %ln1vt , !tbaa !3
  %ln1vv = load i64*, i64**  %Hp_Var
  %ln1vw = ptrtoint i64* %ln1vv to i64
  %ln1vx = add i64 %ln1vw, -95
  store i64  %ln1vx, i64*  %lc1rD 
  %ln1vz = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1lZ_info$def to i64
  %ln1vy = load i64*, i64**  %Hp_Var
  %ln1vA = getelementptr inbounds i64, i64*  %ln1vy, i32  -4 
  store i64  %ln1vz, i64*  %ln1vA , !tbaa !3
  %ln1vB = load i64*, i64**  %Hp_Var
  %ln1vC = getelementptr inbounds i64, i64*  %ln1vB, i32  -4 
  %ln1vD = ptrtoint i64* %ln1vC to i64
  store i64  %ln1vD, i64*  %lc1rE 
  %ln1vF = ptrtoint i8* @ghczmprim_GHCziTuple_Z2T_con_info to i64
  %ln1vE = load i64*, i64**  %Hp_Var
  %ln1vG = getelementptr inbounds i64, i64*  %ln1vE, i32  -2 
  store i64  %ln1vF, i64*  %ln1vG , !tbaa !3
  %ln1vI = load i64, i64*  %lc1rE
  %ln1vH = load i64*, i64**  %Hp_Var
  %ln1vJ = getelementptr inbounds i64, i64*  %ln1vH, i32  -1 
  store i64  %ln1vI, i64*  %ln1vJ , !tbaa !3
  %ln1vL = load i64, i64*  %lc1rD
  %ln1vK = load i64*, i64**  %Hp_Var
  %ln1vM = getelementptr inbounds i64, i64*  %ln1vK, i32  0 
  store i64  %ln1vL, i64*  %ln1vM , !tbaa !3
  %ln1vO = load i64*, i64**  %Hp_Var
  %ln1vP = ptrtoint i64* %ln1vO to i64
  %ln1vQ = add i64 %ln1vP, -15
  store i64  %ln1vQ, i64*  %lc1rN 
  %ln1vR = ptrtoint i8* @ghczminternal_GHCziInternalziStackziTypes_emptyCallStack_closure to i64
  store i64  %ln1vR, i64*  %R3_Var 
  %ln1vS = load i64, i64*  %lc1rN
  store i64  %ln1vS, i64*  %R2_Var 
  %ln1vT = ptrtoint i8* @ghczminternal_GHCziInternalziStackziTypes_pushCallStack_closure to i64
  store i64  %ln1vT, i64*  %R1_Var 
  %ln1vU = load i64*, i64**  %Sp_Var
  %ln1vV = getelementptr inbounds i64, i64*  %ln1vU, i32  -2 
  %ln1vW = ptrtoint i64* %ln1vV to i64
  %ln1vX = inttoptr i64 %ln1vW to i64*
  store i64*  %ln1vX, i64**  %Sp_Var 
  %ln1vY = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1vZ = load i64*, i64**  %Sp_Var
  %ln1w0 = load i64*, i64**  %Hp_Var
  %ln1w1 = load i64, i64*  %R1_Var
  %ln1w2 = load i64, i64*  %R2_Var
  %ln1w3 = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1vY( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1vZ, i64* noalias nocapture  %ln1w0, i64  %ln1w1, i64  %ln1w2, i64  %ln1w3, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rS:
  %ln1w4 = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  152, i64*  %ln1w4 , !tbaa !5
  br label  %c1rP
c1rP:
  %ln1w5 = load i64, i64*  %ls1mc
  store i64  %ln1w5, i64*  %R1_Var 
  %ln1w6 = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1w7 = bitcast i64* %ln1w6 to i64*
  %ln1w8 = load i64, i64*  %ln1w7, !tbaa !5
  %ln1w9 = inttoptr i64 %ln1w8 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1wa = load i64*, i64**  %Sp_Var
  %ln1wb = load i64*, i64**  %Hp_Var
  %ln1wc = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1w9( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1wa, i64* noalias nocapture  %ln1wb, i64  %ln1wc, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1md_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1md_info$def to i8*)
define internal ghccc void @s1md_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1se_srt_struct*  @_u1se_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1md_info$def to i64)) to i32),i32  0) }>
{
n1wd:
  %ls1md = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %ls1lX = alloca i64, i32  1
  %lc1r8 = alloca i64, i32  1
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rT
c1rT:
  %ln1we = load i64, i64*  %R1_Var
  store i64  %ln1we, i64*  %ls1md 
  %ln1wf = load i64*, i64**  %Sp_Var
  %ln1wg = getelementptr inbounds i64, i64*  %ln1wf, i32  1 
  %ln1wh = ptrtoint i64* %ln1wg to i64
  %ln1wi = sub i64 %ln1wh, 24
  %ln1wj = icmp ult i64 %ln1wi, %SpLim_Arg
  %ln1wk = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1wj, i1  0  ) 
  br i1  %ln1wk, label  %c1rU, label  %c1rV
c1rV:
  %ln1wl = load i64*, i64**  %Hp_Var
  %ln1wm = getelementptr inbounds i64, i64*  %ln1wl, i32  2 
  %ln1wn = ptrtoint i64* %ln1wm to i64
  %ln1wo = inttoptr i64 %ln1wn to i64*
  store i64*  %ln1wo, i64**  %Hp_Var 
  %ln1wp = load i64*, i64**  %Hp_Var
  %ln1wq = ptrtoint i64* %ln1wp to i64
  %ln1wr = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1ws = bitcast i64* %ln1wr to i64*
  %ln1wt = load i64, i64*  %ln1ws, !tbaa !5
  %ln1wu = icmp ugt i64 %ln1wq, %ln1wt
  %ln1wv = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1wu, i1  0  ) 
  br i1  %ln1wv, label  %c1rX, label  %c1rW
c1rW:
  %ln1wx = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1ww = load i64*, i64**  %Sp_Var
  %ln1wy = getelementptr inbounds i64, i64*  %ln1ww, i32  -2 
  store i64  %ln1wx, i64*  %ln1wy , !tbaa !2
  %ln1wA = load i64, i64*  %ls1md
  %ln1wz = load i64*, i64**  %Sp_Var
  %ln1wB = getelementptr inbounds i64, i64*  %ln1wz, i32  -1 
  store i64  %ln1wA, i64*  %ln1wB , !tbaa !2
  %ln1wC = load i64, i64*  %ls1md
  %ln1wD = add i64 %ln1wC, 16
  %ln1wE = inttoptr i64 %ln1wD to i64*
  %ln1wF = load i64, i64*  %ln1wE, !tbaa !1
  store i64  %ln1wF, i64*  %ls1lX 
  %ln1wH = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1mc_info$def to i64
  %ln1wG = load i64*, i64**  %Hp_Var
  %ln1wI = getelementptr inbounds i64, i64*  %ln1wG, i32  -1 
  store i64  %ln1wH, i64*  %ln1wI , !tbaa !3
  %ln1wJ = load i64*, i64**  %Hp_Var
  %ln1wK = getelementptr inbounds i64, i64*  %ln1wJ, i32  -1 
  %ln1wL = ptrtoint i64* %ln1wK to i64
  store i64  %ln1wL, i64*  %lc1r8 
  %ln1wM = load i64, i64*  %ls1lX
  store i64  %ln1wM, i64*  %R3_Var 
  %ln1wN = load i64, i64*  %lc1r8
  store i64  %ln1wN, i64*  %R2_Var 
  %ln1wO = ptrtoint i8* @ghczminternal_GHCziInternalziList_head_closure to i64
  store i64  %ln1wO, i64*  %R1_Var 
  %ln1wP = load i64*, i64**  %Sp_Var
  %ln1wQ = getelementptr inbounds i64, i64*  %ln1wP, i32  -2 
  %ln1wR = ptrtoint i64* %ln1wQ to i64
  %ln1wS = inttoptr i64 %ln1wR to i64*
  store i64*  %ln1wS, i64**  %Sp_Var 
  %ln1wT = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1wU = load i64*, i64**  %Sp_Var
  %ln1wV = load i64*, i64**  %Hp_Var
  %ln1wW = load i64, i64*  %R1_Var
  %ln1wX = load i64, i64*  %R2_Var
  %ln1wY = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1wT( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1wU, i64* noalias nocapture  %ln1wV, i64  %ln1wW, i64  %ln1wX, i64  %ln1wY, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1rX:
  %ln1wZ = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  16, i64*  %ln1wZ , !tbaa !5
  br label  %c1rU
c1rU:
  %ln1x0 = load i64, i64*  %ls1md
  store i64  %ln1x0, i64*  %R1_Var 
  %ln1x1 = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1x2 = bitcast i64* %ln1x1 to i64*
  %ln1x3 = load i64, i64*  %ln1x2, !tbaa !5
  %ln1x4 = inttoptr i64 %ln1x3 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1x5 = load i64*, i64**  %Sp_Var
  %ln1x6 = load i64*, i64**  %Hp_Var
  %ln1x7 = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1x4( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1x5, i64* noalias nocapture  %ln1x6, i64  %ln1x7, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1me_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1me_info$def to i8*)
define internal ghccc void @s1me_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1sf_srt_struct*  @_u1sf_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1me_info$def to i64)) to i32),i32  0) }>
{
n1x8:
  %ls1me = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %ls1lX = alloca i64, i32  1
  %lc1r4 = alloca i64, i32  1
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1rY
c1rY:
  %ln1x9 = load i64, i64*  %R1_Var
  store i64  %ln1x9, i64*  %ls1me 
  %ln1xa = load i64*, i64**  %Sp_Var
  %ln1xb = getelementptr inbounds i64, i64*  %ln1xa, i32  1 
  %ln1xc = ptrtoint i64* %ln1xb to i64
  %ln1xd = sub i64 %ln1xc, 24
  %ln1xe = icmp ult i64 %ln1xd, %SpLim_Arg
  %ln1xf = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1xe, i1  0  ) 
  br i1  %ln1xf, label  %c1rZ, label  %c1s0
c1s0:
  %ln1xg = load i64*, i64**  %Hp_Var
  %ln1xh = getelementptr inbounds i64, i64*  %ln1xg, i32  3 
  %ln1xi = ptrtoint i64* %ln1xh to i64
  %ln1xj = inttoptr i64 %ln1xi to i64*
  store i64*  %ln1xj, i64**  %Hp_Var 
  %ln1xk = load i64*, i64**  %Hp_Var
  %ln1xl = ptrtoint i64* %ln1xk to i64
  %ln1xm = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1xn = bitcast i64* %ln1xm to i64*
  %ln1xo = load i64, i64*  %ln1xn, !tbaa !5
  %ln1xp = icmp ugt i64 %ln1xl, %ln1xo
  %ln1xq = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1xp, i1  0  ) 
  br i1  %ln1xq, label  %c1s2, label  %c1s1
c1s1:
  %ln1xs = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1xr = load i64*, i64**  %Sp_Var
  %ln1xt = getelementptr inbounds i64, i64*  %ln1xr, i32  -2 
  store i64  %ln1xs, i64*  %ln1xt , !tbaa !2
  %ln1xv = load i64, i64*  %ls1me
  %ln1xu = load i64*, i64**  %Sp_Var
  %ln1xw = getelementptr inbounds i64, i64*  %ln1xu, i32  -1 
  store i64  %ln1xv, i64*  %ln1xw , !tbaa !2
  %ln1xx = load i64, i64*  %ls1me
  %ln1xy = add i64 %ln1xx, 16
  %ln1xz = inttoptr i64 %ln1xy to i64*
  %ln1xA = load i64, i64*  %ln1xz, !tbaa !1
  store i64  %ln1xA, i64*  %ls1lX 
  %ln1xC = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1md_info$def to i64
  %ln1xB = load i64*, i64**  %Hp_Var
  %ln1xD = getelementptr inbounds i64, i64*  %ln1xB, i32  -2 
  store i64  %ln1xC, i64*  %ln1xD , !tbaa !3
  %ln1xF = load i64, i64*  %ls1lX
  %ln1xE = load i64*, i64**  %Hp_Var
  %ln1xG = getelementptr inbounds i64, i64*  %ln1xE, i32  0 
  store i64  %ln1xF, i64*  %ln1xG , !tbaa !3
  %ln1xH = load i64*, i64**  %Hp_Var
  %ln1xI = getelementptr inbounds i64, i64*  %ln1xH, i32  -2 
  %ln1xJ = ptrtoint i64* %ln1xI to i64
  store i64  %ln1xJ, i64*  %lc1r4 
  %ln1xK = load i64, i64*  %lc1r4
  store i64  %ln1xK, i64*  %R3_Var 
  %ln1xL = ptrtoint i8* @ghczminternal_GHCziInternalziRead_zdfReadInt_closure to i64
  store i64  %ln1xL, i64*  %R2_Var 
  %ln1xM = ptrtoint i8* @ghczminternal_GHCziInternalziTextziRead_read_closure to i64
  store i64  %ln1xM, i64*  %R1_Var 
  %ln1xN = load i64*, i64**  %Sp_Var
  %ln1xO = getelementptr inbounds i64, i64*  %ln1xN, i32  -2 
  %ln1xP = ptrtoint i64* %ln1xO to i64
  %ln1xQ = inttoptr i64 %ln1xP to i64*
  store i64*  %ln1xQ, i64**  %Sp_Var 
  %ln1xR = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1xS = load i64*, i64**  %Sp_Var
  %ln1xT = load i64*, i64**  %Hp_Var
  %ln1xU = load i64, i64*  %R1_Var
  %ln1xV = load i64, i64*  %R2_Var
  %ln1xW = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1xR( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1xS, i64* noalias nocapture  %ln1xT, i64  %ln1xU, i64  %ln1xV, i64  %ln1xW, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1s2:
  %ln1xX = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  24, i64*  %ln1xX , !tbaa !5
  br label  %c1rZ
c1rZ:
  %ln1xY = load i64, i64*  %ls1me
  store i64  %ln1xY, i64*  %R1_Var 
  %ln1xZ = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1y0 = bitcast i64* %ln1xZ to i64*
  %ln1y1 = load i64, i64*  %ln1y0, !tbaa !5
  %ln1y2 = inttoptr i64 %ln1y1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1y3 = load i64*, i64**  %Sp_Var
  %ln1y4 = load i64*, i64**  %Hp_Var
  %ln1y5 = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1y2( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1y3, i64* noalias nocapture  %ln1y4, i64  %ln1y5, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1mf_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mf_info$def to i8*)
define internal ghccc void @s1mf_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1sg_srt_struct*  @_u1sg_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mf_info$def to i64)) to i32),i32  0) }>
{
n1y6:
  %ls1mf = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %ls1lX = alloca i64, i32  1
  %lc1r0 = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1s3
c1s3:
  %ln1y7 = load i64, i64*  %R1_Var
  store i64  %ln1y7, i64*  %ls1mf 
  %ln1y8 = load i64*, i64**  %Sp_Var
  %ln1y9 = getelementptr inbounds i64, i64*  %ln1y8, i32  1 
  %ln1ya = ptrtoint i64* %ln1y9 to i64
  %ln1yb = sub i64 %ln1ya, 24
  %ln1yc = icmp ult i64 %ln1yb, %SpLim_Arg
  %ln1yd = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1yc, i1  0  ) 
  br i1  %ln1yd, label  %c1s4, label  %c1s5
c1s5:
  %ln1ye = load i64*, i64**  %Hp_Var
  %ln1yf = getelementptr inbounds i64, i64*  %ln1ye, i32  3 
  %ln1yg = ptrtoint i64* %ln1yf to i64
  %ln1yh = inttoptr i64 %ln1yg to i64*
  store i64*  %ln1yh, i64**  %Hp_Var 
  %ln1yi = load i64*, i64**  %Hp_Var
  %ln1yj = ptrtoint i64* %ln1yi to i64
  %ln1yk = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1yl = bitcast i64* %ln1yk to i64*
  %ln1ym = load i64, i64*  %ln1yl, !tbaa !5
  %ln1yn = icmp ugt i64 %ln1yj, %ln1ym
  %ln1yo = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1yn, i1  0  ) 
  br i1  %ln1yo, label  %c1s7, label  %c1s6
c1s6:
  %ln1yq = ptrtoint i8* @stg_upd_frame_info to i64
  %ln1yp = load i64*, i64**  %Sp_Var
  %ln1yr = getelementptr inbounds i64, i64*  %ln1yp, i32  -2 
  store i64  %ln1yq, i64*  %ln1yr , !tbaa !2
  %ln1yt = load i64, i64*  %ls1mf
  %ln1ys = load i64*, i64**  %Sp_Var
  %ln1yu = getelementptr inbounds i64, i64*  %ln1ys, i32  -1 
  store i64  %ln1yt, i64*  %ln1yu , !tbaa !2
  %ln1yv = load i64, i64*  %ls1mf
  %ln1yw = add i64 %ln1yv, 16
  %ln1yx = inttoptr i64 %ln1yw to i64*
  %ln1yy = load i64, i64*  %ln1yx, !tbaa !1
  store i64  %ln1yy, i64*  %ls1lX 
  %ln1yA = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1me_info$def to i64
  %ln1yz = load i64*, i64**  %Hp_Var
  %ln1yB = getelementptr inbounds i64, i64*  %ln1yz, i32  -2 
  store i64  %ln1yA, i64*  %ln1yB , !tbaa !3
  %ln1yD = load i64, i64*  %ls1lX
  %ln1yC = load i64*, i64**  %Hp_Var
  %ln1yE = getelementptr inbounds i64, i64*  %ln1yC, i32  0 
  store i64  %ln1yD, i64*  %ln1yE , !tbaa !3
  %ln1yF = load i64*, i64**  %Hp_Var
  %ln1yG = getelementptr inbounds i64, i64*  %ln1yF, i32  -2 
  %ln1yH = ptrtoint i64* %ln1yG to i64
  store i64  %ln1yH, i64*  %lc1r0 
  %ln1yI = load i64, i64*  %lc1r0
  store i64  %ln1yI, i64*  %R2_Var 
  %ln1yJ = load i64*, i64**  %Sp_Var
  %ln1yK = getelementptr inbounds i64, i64*  %ln1yJ, i32  -2 
  %ln1yL = ptrtoint i64* %ln1yK to i64
  %ln1yM = inttoptr i64 %ln1yL to i64*
  store i64*  %ln1yM, i64**  %Sp_Var 
  %ln1yN = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @Main_sumNumbers_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1yO = load i64*, i64**  %Sp_Var
  %ln1yP = load i64*, i64**  %Hp_Var
  %ln1yQ = load i64, i64*  %R1_Var
  %ln1yR = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1yN( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1yO, i64* noalias nocapture  %ln1yP, i64  %ln1yQ, i64  %ln1yR, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1s7:
  %ln1yS = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  24, i64*  %ln1yS , !tbaa !5
  br label  %c1s4
c1s4:
  %ln1yT = load i64, i64*  %ls1mf
  store i64  %ln1yT, i64*  %R1_Var 
  %ln1yU = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1yV = bitcast i64* %ln1yU to i64*
  %ln1yW = load i64, i64*  %ln1yV, !tbaa !5
  %ln1yX = inttoptr i64 %ln1yW to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1yY = load i64*, i64**  %Sp_Var
  %ln1yZ = load i64*, i64**  %Hp_Var
  %ln1z0 = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1yX( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1yY, i64* noalias nocapture  %ln1yZ, i64  %ln1z0, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s1mg_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s1mg_info$def to i8*)
define internal ghccc void @s1mg_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967301, i64  3, i32  14, i32  0 }>
{
n1z1:
  %ls1lX = alloca i64, i32  1
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %lc1qW = alloca i64, i32  1
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  %R2_Arg, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1s8
c1s8:
  %ln1z2 = load i64, i64*  %R2_Var
  store i64  %ln1z2, i64*  %ls1lX 
  br label  %c1sa
c1sa:
  %ln1z3 = load i64*, i64**  %Hp_Var
  %ln1z4 = getelementptr inbounds i64, i64*  %ln1z3, i32  3 
  %ln1z5 = ptrtoint i64* %ln1z4 to i64
  %ln1z6 = inttoptr i64 %ln1z5 to i64*
  store i64*  %ln1z6, i64**  %Hp_Var 
  %ln1z7 = load i64*, i64**  %Hp_Var
  %ln1z8 = ptrtoint i64* %ln1z7 to i64
  %ln1z9 = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln1za = bitcast i64* %ln1z9 to i64*
  %ln1zb = load i64, i64*  %ln1za, !tbaa !5
  %ln1zc = icmp ugt i64 %ln1z8, %ln1zb
  %ln1zd = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1zc, i1  0  ) 
  br i1  %ln1zd, label  %c1sc, label  %c1sb
c1sb:
  %ln1zf = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s1mf_info$def to i64
  %ln1ze = load i64*, i64**  %Hp_Var
  %ln1zg = getelementptr inbounds i64, i64*  %ln1ze, i32  -2 
  store i64  %ln1zf, i64*  %ln1zg , !tbaa !3
  %ln1zi = load i64, i64*  %ls1lX
  %ln1zh = load i64*, i64**  %Hp_Var
  %ln1zj = getelementptr inbounds i64, i64*  %ln1zh, i32  0 
  store i64  %ln1zi, i64*  %ln1zj , !tbaa !3
  %ln1zk = load i64*, i64**  %Hp_Var
  %ln1zl = getelementptr inbounds i64, i64*  %ln1zk, i32  -2 
  %ln1zm = ptrtoint i64* %ln1zl to i64
  store i64  %ln1zm, i64*  %lc1qW 
  %ln1zn = load i64, i64*  %lc1qW
  store i64  %ln1zn, i64*  %R3_Var 
  %ln1zo = ptrtoint i8* @ghczminternal_GHCziInternalziShow_zdfShowInt_closure to i64
  store i64  %ln1zo, i64*  %R2_Var 
  %ln1zp = ptrtoint i8* @ghczminternal_GHCziInternalziSystemziIO_print_closure to i64
  store i64  %ln1zp, i64*  %R1_Var 
  %ln1zq = bitcast i8* @stg_ap_pp_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1zr = load i64*, i64**  %Hp_Var
  %ln1zs = load i64, i64*  %R1_Var
  %ln1zt = load i64, i64*  %R2_Var
  %ln1zu = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1zq( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %ln1zr, i64  %ln1zs, i64  %ln1zt, i64  %ln1zu, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1sc:
  %ln1zv = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  24, i64*  %ln1zv , !tbaa !5
  br label  %c1s9
c1s9:
  %ln1zw = load i64, i64*  %ls1lX
  store i64  %ln1zw, i64*  %R2_Var 
  %ln1zx = ptrtoint %s1mg_closure_struct* @s1mg_closure$def to i64
  store i64  %ln1zx, i64*  %R1_Var 
  %ln1zy = getelementptr inbounds i64, i64*  %Base_Arg, i32  -1 
  %ln1zz = bitcast i64* %ln1zy to i64*
  %ln1zA = load i64, i64*  %ln1zz, !tbaa !5
  %ln1zB = inttoptr i64 %ln1zA to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1zC = load i64*, i64**  %Hp_Var
  %ln1zD = load i64, i64*  %R1_Var
  %ln1zE = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1zB( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %ln1zC, i64  %ln1zD, i64  %ln1zE, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%_u1zO_srt_struct = type <{i64, i64, i64, i64, i64 }>
%Main_main_closure_struct = type <{i64, i64, i64, i64 }>
@_u1zO_srt$def = internal global %_u1zO_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_3_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziSystemziEnvironment_getArgs_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziBase_zdfMonadIO_closure to i64), i64 ptrtoint (%s1mg_closure_struct*  @s1mg_closure$def to i64), i64  0 }>, align 8
@_u1zO_srt = internal alias i8, bitcast (%_u1zO_srt_struct*  @_u1zO_srt$def to i8*)
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i64), i64  0, i64  0, i64  0 }>, align 8
@Main_main_closure =  alias i8, bitcast (%Main_main_closure_struct*  @Main_main_closure$def to i8*)
@Main_main_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i8*)
define  ghccc void @Main_main_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1zO_srt_struct*  @_u1zO_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i64)) to i32),i32  0) }>
{
n1zP:
  %lrhk = alloca i64, i32  1
  %lc1zI = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c1zL
c1zL:
  %ln1zQ = load i64, i64*  %R1_Var
  store i64  %ln1zQ, i64*  %lrhk 
  %ln1zR = load i64*, i64**  %Sp_Var
  %ln1zS = getelementptr inbounds i64, i64*  %ln1zR, i32  1 
  %ln1zT = ptrtoint i64* %ln1zS to i64
  %ln1zU = sub i64 %ln1zT, 48
  %ln1zV = icmp ult i64 %ln1zU, %SpLim_Arg
  %ln1zW = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1zV, i1  0  ) 
  br i1  %ln1zW, label  %c1zM, label  %c1zN
c1zN:
  %ln1zX = ptrtoint i64* %Base_Arg to i64
  %ln1zY = inttoptr i64 %ln1zX to i8*
  %ln1zZ = load i64, i64*  %lrhk
  %ln1A0 = inttoptr i64 %ln1zZ to i8*
  %ln1A1 = bitcast i8* @newCAF to i8* (i8*, i8* )*
  %ln1A2 = call ccc i8* (i8*, i8* ) %ln1A1( i8*  %ln1zY, i8*  %ln1A0  ) nounwind 
  %ln1A3 = ptrtoint i8* %ln1A2 to i64
  store i64  %ln1A3, i64*  %lc1zI 
  %ln1A4 = load i64, i64*  %lc1zI
  %ln1A5 = icmp eq i64 %ln1A4, 0
  br i1  %ln1A5, label  %c1zK, label  %c1zJ
c1zJ:
  %ln1A7 = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln1A6 = load i64*, i64**  %Sp_Var
  %ln1A8 = getelementptr inbounds i64, i64*  %ln1A6, i32  -2 
  store i64  %ln1A7, i64*  %ln1A8 , !tbaa !2
  %ln1Aa = load i64, i64*  %lc1zI
  %ln1A9 = load i64*, i64**  %Sp_Var
  %ln1Ab = getelementptr inbounds i64, i64*  %ln1A9, i32  -1 
  store i64  %ln1Aa, i64*  %ln1Ab , !tbaa !2
  %ln1Ac = ptrtoint i8* @ghczminternal_GHCziInternalziBase_zdfMonadIO_closure to i64
  store i64  %ln1Ac, i64*  %R2_Var 
  %ln1Ae = ptrtoint i8* @stg_ap_pp_info to i64
  %ln1Ad = load i64*, i64**  %Sp_Var
  %ln1Af = getelementptr inbounds i64, i64*  %ln1Ad, i32  -5 
  store i64  %ln1Ae, i64*  %ln1Af , !tbaa !2
  %ln1Ah = ptrtoint i8* @ghczminternal_GHCziInternalziSystemziEnvironment_getArgs_closure to i64
  %ln1Ag = load i64*, i64**  %Sp_Var
  %ln1Ai = getelementptr inbounds i64, i64*  %ln1Ag, i32  -4 
  store i64  %ln1Ah, i64*  %ln1Ai , !tbaa !2
  %ln1Ak = ptrtoint %s1mg_closure_struct* @s1mg_closure$def to i64
  %ln1Al = add i64 %ln1Ak, 1
  %ln1Aj = load i64*, i64**  %Sp_Var
  %ln1Am = getelementptr inbounds i64, i64*  %ln1Aj, i32  -3 
  store i64  %ln1Al, i64*  %ln1Am , !tbaa !2
  %ln1An = load i64*, i64**  %Sp_Var
  %ln1Ao = getelementptr inbounds i64, i64*  %ln1An, i32  -5 
  %ln1Ap = ptrtoint i64* %ln1Ao to i64
  %ln1Aq = inttoptr i64 %ln1Ap to i64*
  store i64*  %ln1Aq, i64**  %Sp_Var 
  %ln1Ar = bitcast i8* @ghczminternal_GHCziInternalziBase_zgzgze_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1As = load i64*, i64**  %Sp_Var
  %ln1At = load i64, i64*  %R1_Var
  %ln1Au = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1Ar( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1As, i64* noalias nocapture  %Hp_Arg, i64  %ln1At, i64  %ln1Au, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1zK:
  %ln1Av = load i64, i64*  %lrhk
  %ln1Aw = inttoptr i64 %ln1Av to i64*
  %ln1Ax = load i64, i64*  %ln1Aw, !tbaa !1
  %ln1Ay = inttoptr i64 %ln1Ax to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1Az = load i64*, i64**  %Sp_Var
  %ln1AA = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1Ay( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1Az, i64* noalias nocapture  %Hp_Arg, i64  %ln1AA, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1zM:
  %ln1AB = load i64, i64*  %lrhk
  store i64  %ln1AB, i64*  %R1_Var 
  %ln1AC = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1AD = bitcast i64* %ln1AC to i64*
  %ln1AE = load i64, i64*  %ln1AD, !tbaa !5
  %ln1AF = inttoptr i64 %ln1AE to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1AG = load i64*, i64**  %Sp_Var
  %ln1AH = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1AF( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1AG, i64* noalias nocapture  %Hp_Arg, i64  %ln1AH, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%_u1AR_srt_struct = type <{i64, i64, i64, i64 }>
%ZCMain_main_closure_struct = type <{i64, i64, i64, i64 }>
@_u1AR_srt$def = internal global %_u1AR_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTopHandler_runMainIO_closure to i64), i64 ptrtoint (%Main_main_closure_struct*  @Main_main_closure$def to i64), i64  0 }>, align 8
@_u1AR_srt = internal alias i8, bitcast (%_u1AR_srt_struct*  @_u1AR_srt$def to i8*)
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i64), i64  0, i64  0, i64  0 }>, align 8
@ZCMain_main_closure =  alias i8, bitcast (%ZCMain_main_closure_struct*  @ZCMain_main_closure$def to i8*)
@ZCMain_main_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i8*)
define  ghccc void @ZCMain_main_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  21, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u1AR_srt_struct*  @_u1AR_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i64)) to i32),i32  0) }>
{
n1AS:
  %l01D = alloca i64, i32  1
  %lc1AL = alloca i64, i32  1
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c1AO
c1AO:
  %ln1AT = load i64, i64*  %R1_Var
  store i64  %ln1AT, i64*  %l01D 
  %ln1AU = load i64*, i64**  %Sp_Var
  %ln1AV = getelementptr inbounds i64, i64*  %ln1AU, i32  1 
  %ln1AW = ptrtoint i64* %ln1AV to i64
  %ln1AX = sub i64 %ln1AW, 24
  %ln1AY = icmp ult i64 %ln1AX, %SpLim_Arg
  %ln1AZ = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln1AY, i1  0  ) 
  br i1  %ln1AZ, label  %c1AP, label  %c1AQ
c1AQ:
  %ln1B0 = ptrtoint i64* %Base_Arg to i64
  %ln1B1 = inttoptr i64 %ln1B0 to i8*
  %ln1B2 = load i64, i64*  %l01D
  %ln1B3 = inttoptr i64 %ln1B2 to i8*
  %ln1B4 = bitcast i8* @newCAF to i8* (i8*, i8* )*
  %ln1B5 = call ccc i8* (i8*, i8* ) %ln1B4( i8*  %ln1B1, i8*  %ln1B3  ) nounwind 
  %ln1B6 = ptrtoint i8* %ln1B5 to i64
  store i64  %ln1B6, i64*  %lc1AL 
  %ln1B7 = load i64, i64*  %lc1AL
  %ln1B8 = icmp eq i64 %ln1B7, 0
  br i1  %ln1B8, label  %c1AN, label  %c1AM
c1AM:
  %ln1Ba = ptrtoint i8* @stg_bh_upd_frame_info to i64
  %ln1B9 = load i64*, i64**  %Sp_Var
  %ln1Bb = getelementptr inbounds i64, i64*  %ln1B9, i32  -2 
  store i64  %ln1Ba, i64*  %ln1Bb , !tbaa !2
  %ln1Bd = load i64, i64*  %lc1AL
  %ln1Bc = load i64*, i64**  %Sp_Var
  %ln1Be = getelementptr inbounds i64, i64*  %ln1Bc, i32  -1 
  store i64  %ln1Bd, i64*  %ln1Be , !tbaa !2
  %ln1Bf = ptrtoint %Main_main_closure_struct* @Main_main_closure$def to i64
  store i64  %ln1Bf, i64*  %R2_Var 
  %ln1Bg = ptrtoint i8* @ghczminternal_GHCziInternalziTopHandler_runMainIO_closure to i64
  store i64  %ln1Bg, i64*  %R1_Var 
  %ln1Bh = load i64*, i64**  %Sp_Var
  %ln1Bi = getelementptr inbounds i64, i64*  %ln1Bh, i32  -2 
  %ln1Bj = ptrtoint i64* %ln1Bi to i64
  %ln1Bk = inttoptr i64 %ln1Bj to i64*
  store i64*  %ln1Bk, i64**  %Sp_Var 
  %ln1Bl = bitcast i8* @stg_ap_p_fast to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1Bm = load i64*, i64**  %Sp_Var
  %ln1Bn = load i64, i64*  %R1_Var
  %ln1Bo = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1Bl( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1Bm, i64* noalias nocapture  %Hp_Arg, i64  %ln1Bn, i64  %ln1Bo, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1AN:
  %ln1Bp = load i64, i64*  %l01D
  %ln1Bq = inttoptr i64 %ln1Bp to i64*
  %ln1Br = load i64, i64*  %ln1Bq, !tbaa !1
  %ln1Bs = inttoptr i64 %ln1Br to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1Bt = load i64*, i64**  %Sp_Var
  %ln1Bu = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1Bs( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1Bt, i64* noalias nocapture  %Hp_Arg, i64  %ln1Bu, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c1AP:
  %ln1Bv = load i64, i64*  %l01D
  store i64  %ln1Bv, i64*  %R1_Var 
  %ln1Bw = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln1Bx = bitcast i64* %ln1Bw to i64*
  %ln1By = load i64, i64*  %ln1Bx, !tbaa !5
  %ln1Bz = inttoptr i64 %ln1By to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln1BA = load i64*, i64**  %Sp_Var
  %ln1BB = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln1Bz( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln1BA, i64* noalias nocapture  %Hp_Arg, i64  %ln1BB, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@stg_SRT_2_info = external global i8
@ghczmprim_GHCziClasses_zdfOrdInt_closure = external global i8
@ghczminternal_GHCziInternalziNum_zdfNumInt_closure = external global i8
@stg_upd_frame_info = external global i8
@stg_ap_pp_info = external global i8
@ghczminternal_GHCziInternalziNum_zp_info = external global i8
@stg_INTLIKE_closure = external global i8
@ghczmprim_GHCziClasses_zg_info = external global i8
@stg_gc_unpt_r1 = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@stg_SRT_3_info = external global i8
@ghczmprim_GHCziCString_unpackCStringzh_closure = external global i8
@ghczminternal_GHCziInternalziStackziTypes_emptyCallStack_closure = external global i8
@ghczminternal_GHCziInternalziStackziTypes_pushCallStack_closure = external global i8
@ghczminternal_GHCziInternalziList_head_closure = external global i8
@ghczminternal_GHCziInternalziTextziRead_read_closure = external global i8
@ghczminternal_GHCziInternalziRead_zdfReadInt_closure = external global i8
@ghczminternal_GHCziInternalziSystemziIO_print_closure = external global i8
@ghczminternal_GHCziInternalziShow_zdfShowInt_closure = external global i8
@stg_ap_n_fast = external global i8
@ghczminternal_GHCziInternalziStackziTypes_SrcLoc_con_info = external global i8
@ghczmprim_GHCziTuple_Z2T_con_info = external global i8
@stg_ap_pp_fast = external global i8
@ghczminternal_GHCziInternalziSystemziEnvironment_getArgs_closure = external global i8
@ghczminternal_GHCziInternalziBase_zdfMonadIO_closure = external global i8
@newCAF = external global i8
@stg_bh_upd_frame_info = external global i8
@ghczminternal_GHCziInternalziBase_zgzgze_info = external global i8
@ghczminternal_GHCziInternalziTopHandler_runMainIO_closure = external global i8
@stg_ap_p_fast = external global i8
@llvm.used = appending constant [20 x i8*] [i8* bitcast (%ZCMain_main_closure_struct*  @ZCMain_main_closure$def to i8*), i8* bitcast (%_u1AR_srt_struct*  @_u1AR_srt$def to i8*), i8* bitcast (%Main_main_closure_struct*  @Main_main_closure$def to i8*), i8* bitcast (%_u1zO_srt_struct*  @_u1zO_srt$def to i8*), i8* bitcast (%s1mg_closure_struct*  @s1mg_closure$def to i8*), i8* bitcast (%c1rI_str_struct*  @c1rI_str$def to i8*), i8* bitcast (%c1ry_str_struct*  @c1ry_str$def to i8*), i8* bitcast (%c1rp_str_struct*  @c1rp_str$def to i8*), i8* bitcast (%c1rg_str_struct*  @c1rg_str$def to i8*), i8* bitcast (%_u1sg_srt_struct*  @_u1sg_srt$def to i8*), i8* bitcast (%_u1sf_srt_struct*  @_u1sf_srt$def to i8*), i8* bitcast (%_u1se_srt_struct*  @_u1se_srt$def to i8*), i8* bitcast (%_u1sd_srt_struct*  @_u1sd_srt$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct*  @Main_zdtrModule_closure$def to i8*), i8* bitcast (%r1lM_closure_struct*  @r1lM_closure$def to i8*), i8* bitcast (%r1lK_closure_struct*  @r1lK_closure$def to i8*), i8* bitcast (%Main_sumNumbers_closure_struct*  @Main_sumNumbers_closure$def to i8*), i8* bitcast (%_u1n0_srt_struct*  @_u1n0_srt$def to i8*), i8* bitcast (%r1lJ_bytes_struct*  @r1lJ_bytes$def to i8*), i8* bitcast (%r1lL_bytes_struct*  @r1lL_bytes$def to i8*) ], section "llvm.metadata"
