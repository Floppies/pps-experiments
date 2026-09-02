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
%Main_main8_bytes_struct = type <{[7 x i8] }>
@Main_main8_bytes$def = internal constant %Main_main8_bytes_struct<{[7 x i8] [i8  83, i8  117, i8  109, i8  46, i8  104, i8  115, i8  0 ] }>, align 1
@Main_main8_bytes =  alias i8, bitcast (%Main_main8_bytes_struct*  @Main_main8_bytes$def to i8*)
%Main_main12_bytes_struct = type <{[5 x i8] }>
@Main_main12_bytes$def = internal constant %Main_main12_bytes_struct<{[5 x i8] [i8  104, i8  101, i8  97, i8  100, i8  0 ] }>, align 1
@Main_main12_bytes =  alias i8, bitcast (%Main_main12_bytes_struct*  @Main_main12_bytes$def to i8*)
%Main_zdtrModule2_bytes_struct = type <{[5 x i8] }>
@Main_zdtrModule2_bytes$def = internal constant %Main_zdtrModule2_bytes_struct<{[5 x i8] [i8  77, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@Main_zdtrModule2_bytes =  alias i8, bitcast (%Main_zdtrModule2_bytes_struct*  @Main_zdtrModule2_bytes$def to i8*)
%Main_zdtrModule4_bytes_struct = type <{[5 x i8] }>
@Main_zdtrModule4_bytes$def = internal constant %Main_zdtrModule4_bytes_struct<{[5 x i8] [i8  109, i8  97, i8  105, i8  110, i8  0 ] }>, align 1
@Main_zdtrModule4_bytes =  alias i8, bitcast (%Main_zdtrModule4_bytes_struct*  @Main_zdtrModule4_bytes$def to i8*)
%Main_sumNumbers2_closure_struct = type <{i64, i64 }>
@Main_sumNumbers2_closure$def = internal global %Main_sumNumbers2_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Izh_con_info to i64), i64  1 }>, align 8
@Main_sumNumbers2_closure =  alias i8, bitcast (%Main_sumNumbers2_closure_struct*  @Main_sumNumbers2_closure$def to i8*)
%Main_sumNumbers1_closure_struct = type <{i64, i64 }>
@Main_sumNumbers1_closure$def = internal global %Main_sumNumbers1_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Izh_con_info to i64), i64  0 }>, align 8
@Main_sumNumbers1_closure =  alias i8, bitcast (%Main_sumNumbers1_closure_struct*  @Main_sumNumbers1_closure$def to i8*)
%Main_sumNumbers_closure_struct = type <{i64 }>
@Main_sumNumbers_closure$def = internal global %Main_sumNumbers_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_sumNumbers_info$def to i64) }>, align 8
@Main_sumNumbers_closure =  alias i8, bitcast (%Main_sumNumbers_closure_struct*  @Main_sumNumbers_closure$def to i8*)
@Main_sumNumbers_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_sumNumbers_info$def to i8*)
define  ghccc void @Main_sumNumbers_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967301, i64  0, i32  14, i32  0 }>
{
n2Dl:
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2CK
c2CK:
  %ln2Dm = load i64*, i64**  %Sp_Var
  %ln2Dn = getelementptr inbounds i64, i64*  %ln2Dm, i32  -4 
  %ln2Do = ptrtoint i64* %ln2Dn to i64
  %ln2Dp = icmp ult i64 %ln2Do, %SpLim_Arg
  %ln2Dr = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2Dp, i1  0  ) 
  br i1  %ln2Dr, label  %c2CL, label  %c2CM
c2CM:
  %ln2Dt = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2CH_info$def to i64
  %ln2Ds = load i64*, i64**  %Sp_Var
  %ln2Du = getelementptr inbounds i64, i64*  %ln2Ds, i32  -1 
  store i64  %ln2Dt, i64*  %ln2Du , !tbaa !2
  store i64  %R2_Arg, i64*  %R1_Var 
  %ln2Dv = load i64*, i64**  %Sp_Var
  %ln2Dw = getelementptr inbounds i64, i64*  %ln2Dv, i32  -1 
  %ln2Dx = ptrtoint i64* %ln2Dw to i64
  %ln2Dy = inttoptr i64 %ln2Dx to i64*
  store i64*  %ln2Dy, i64**  %Sp_Var 
  %ln2Dz = load i64, i64*  %R1_Var
  %ln2DA = and i64 %ln2Dz, 7
  %ln2DB = icmp ne i64 %ln2DA, 0
  br i1  %ln2DB, label  %u2Dj, label  %c2CI
c2CI:
  %ln2DD = load i64, i64*  %R1_Var
  %ln2DE = inttoptr i64 %ln2DD to i64*
  %ln2DF = load i64, i64*  %ln2DE, !tbaa !4
  %ln2DG = inttoptr i64 %ln2DF to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2DH = load i64*, i64**  %Sp_Var
  %ln2DI = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2DG( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2DH, i64* noalias nocapture  %Hp_Arg, i64  %ln2DI, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
u2Dj:
  %ln2DJ = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2CH_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2DK = load i64*, i64**  %Sp_Var
  %ln2DL = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2DJ( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2DK, i64* noalias nocapture  %Hp_Arg, i64  %ln2DL, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2CL:
  %ln2DM = ptrtoint %Main_sumNumbers_closure_struct* @Main_sumNumbers_closure$def to i64
  store i64  %ln2DM, i64*  %R1_Var 
  %ln2DN = getelementptr inbounds i64, i64*  %Base_Arg, i32  -1 
  %ln2DO = bitcast i64* %ln2DN to i64*
  %ln2DP = load i64, i64*  %ln2DO, !tbaa !5
  %ln2DQ = inttoptr i64 %ln2DP to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2DR = load i64*, i64**  %Sp_Var
  %ln2DS = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2DQ( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2DR, i64* noalias nocapture  %Hp_Arg, i64  %ln2DS, i64  %R2_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
declare  ccc i1 @llvm.expect.i1(i1 , i1 )

@c2CH_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2CH_info$def to i8*)
define internal ghccc void @c2CH_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32  0 }>
{
n2DT:
  %ls2C2 = alloca i64, i32  1
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c2CH
c2CH:
  %ln2DW = load i64, i64*  %R1_Var
  %ln2DX = add i64 %ln2DW, 7
  %ln2DY = inttoptr i64 %ln2DX to i64*
  %ln2DZ = load i64, i64*  %ln2DY, !tbaa !4
  store i64  %ln2DZ, i64*  %ls2C2 
  %ln2E0 = load i64, i64*  %ls2C2
  %ln2E1 = icmp sgt i64 1, %ln2E0
  %ln2E2 = zext i1 %ln2E1 to i64
switch i64  %ln2E2, label  %c2Da [
  i64  1, label  %c2Db
]
c2Da:
  %ln2E3 = load i64*, i64**  %Sp_Var
  %ln2E4 = getelementptr inbounds i64, i64*  %ln2E3, i32  -2 
  store i64  2, i64*  %ln2E4 , !tbaa !2
  %ln2E5 = load i64*, i64**  %Sp_Var
  %ln2E6 = getelementptr inbounds i64, i64*  %ln2E5, i32  -1 
  store i64  1, i64*  %ln2E6 , !tbaa !2
  %ln2E8 = load i64, i64*  %ls2C2
  %ln2E7 = load i64*, i64**  %Sp_Var
  %ln2E9 = getelementptr inbounds i64, i64*  %ln2E7, i32  0 
  store i64  %ln2E8, i64*  %ln2E9 , !tbaa !2
  %ln2Ea = load i64*, i64**  %Sp_Var
  %ln2Eb = getelementptr inbounds i64, i64*  %ln2Ea, i32  -3 
  %ln2Ec = ptrtoint i64* %ln2Eb to i64
  %ln2Ed = inttoptr i64 %ln2Ec to i64*
  store i64*  %ln2Ed, i64**  %Sp_Var 
  %ln2Ee = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2CV_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Ef = load i64*, i64**  %Sp_Var
  %ln2Eg = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Ee( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Ef, i64* noalias nocapture  %Hp_Arg, i64  %ln2Eg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2Db:
  %ln2Eh = ptrtoint i8* @stg_INTLIKE_closure to i64
  %ln2Ei = add i64 %ln2Eh, 257
  store i64  %ln2Ei, i64*  %R1_Var 
  %ln2Ej = load i64*, i64**  %Sp_Var
  %ln2Ek = getelementptr inbounds i64, i64*  %ln2Ej, i32  1 
  %ln2El = ptrtoint i64* %ln2Ek to i64
  %ln2Em = inttoptr i64 %ln2El to i64*
  store i64*  %ln2Em, i64**  %Sp_Var 
  %ln2En = load i64*, i64**  %Sp_Var
  %ln2Eo = getelementptr inbounds i64, i64*  %ln2En, i32  0 
  %ln2Ep = bitcast i64* %ln2Eo to i64*
  %ln2Eq = load i64, i64*  %ln2Ep, !tbaa !2
  %ln2Er = inttoptr i64 %ln2Eq to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Es = load i64*, i64**  %Sp_Var
  %ln2Et = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Er( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Es, i64* noalias nocapture  %Hp_Arg, i64  %ln2Et, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2CV_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2CV_info$def to i8*)
define internal ghccc void @c2CV_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  451, i32  30, i32  0 }>
{
n2Eu:
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %ls2C5 = alloca i64, i32  1
  %ls2C6 = alloca i64, i32  1
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2CV
c2CV:
  %ln2Ev = load i64*, i64**  %Hp_Var
  %ln2Ew = getelementptr inbounds i64, i64*  %ln2Ev, i32  2 
  %ln2Ex = ptrtoint i64* %ln2Ew to i64
  %ln2Ey = inttoptr i64 %ln2Ex to i64*
  store i64*  %ln2Ey, i64**  %Hp_Var 
  %ln2Ez = load i64*, i64**  %Hp_Var
  %ln2EA = ptrtoint i64* %ln2Ez to i64
  %ln2EB = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln2EC = bitcast i64* %ln2EB to i64*
  %ln2ED = load i64, i64*  %ln2EC, !tbaa !5
  %ln2EE = icmp ugt i64 %ln2EA, %ln2ED
  %ln2EF = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2EE, i1  0  ) 
  br i1  %ln2EF, label  %c2D0, label  %c2CZ
c2CZ:
  %ln2EG = load i64*, i64**  %Sp_Var
  %ln2EH = getelementptr inbounds i64, i64*  %ln2EG, i32  1 
  %ln2EI = bitcast i64* %ln2EH to i64*
  %ln2EJ = load i64, i64*  %ln2EI, !tbaa !2
  store i64  %ln2EJ, i64*  %ls2C5 
  %ln2EK = load i64*, i64**  %Sp_Var
  %ln2EL = getelementptr inbounds i64, i64*  %ln2EK, i32  2 
  %ln2EM = bitcast i64* %ln2EL to i64*
  %ln2EN = load i64, i64*  %ln2EM, !tbaa !2
  store i64  %ln2EN, i64*  %ls2C6 
  %ln2EO = load i64, i64*  %ls2C5
  %ln2EP = load i64*, i64**  %Sp_Var
  %ln2EQ = getelementptr inbounds i64, i64*  %ln2EP, i32  3 
  %ln2ER = bitcast i64* %ln2EQ to i64*
  %ln2ES = load i64, i64*  %ln2ER, !tbaa !2
  %ln2ET = icmp sgt i64 %ln2EO, %ln2ES
  %ln2EU = zext i1 %ln2ET to i64
switch i64  %ln2EU, label  %c2D4 [
  i64  1, label  %c2D8
]
c2D4:
  %ln2EV = load i64*, i64**  %Hp_Var
  %ln2EW = getelementptr inbounds i64, i64*  %ln2EV, i32  -2 
  %ln2EX = ptrtoint i64* %ln2EW to i64
  %ln2EY = inttoptr i64 %ln2EX to i64*
  store i64*  %ln2EY, i64**  %Hp_Var 
  %ln2F0 = load i64, i64*  %ls2C5
  %ln2F1 = add i64 %ln2F0, 1
  %ln2EZ = load i64*, i64**  %Sp_Var
  %ln2F2 = getelementptr inbounds i64, i64*  %ln2EZ, i32  1 
  store i64  %ln2F1, i64*  %ln2F2 , !tbaa !2
  %ln2F4 = load i64, i64*  %ls2C6
  %ln2F5 = load i64, i64*  %ls2C5
  %ln2F6 = add i64 %ln2F4, %ln2F5
  %ln2F3 = load i64*, i64**  %Sp_Var
  %ln2F7 = getelementptr inbounds i64, i64*  %ln2F3, i32  2 
  store i64  %ln2F6, i64*  %ln2F7 , !tbaa !2
  %ln2F8 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2CV_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2F9 = load i64*, i64**  %Sp_Var
  %ln2Fa = load i64*, i64**  %Hp_Var
  %ln2Fb = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2F8( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2F9, i64* noalias nocapture  %ln2Fa, i64  %ln2Fb, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2D8:
  %ln2Fd = ptrtoint i8* @ghczmprim_GHCziTypes_Izh_con_info to i64
  %ln2Fc = load i64*, i64**  %Hp_Var
  %ln2Fe = getelementptr inbounds i64, i64*  %ln2Fc, i32  -1 
  store i64  %ln2Fd, i64*  %ln2Fe , !tbaa !3
  %ln2Fg = load i64, i64*  %ls2C6
  %ln2Ff = load i64*, i64**  %Hp_Var
  %ln2Fh = getelementptr inbounds i64, i64*  %ln2Ff, i32  0 
  store i64  %ln2Fg, i64*  %ln2Fh , !tbaa !3
  %ln2Fj = load i64*, i64**  %Hp_Var
  %ln2Fk = ptrtoint i64* %ln2Fj to i64
  %ln2Fl = add i64 %ln2Fk, -7
  store i64  %ln2Fl, i64*  %R1_Var 
  %ln2Fm = load i64*, i64**  %Sp_Var
  %ln2Fn = getelementptr inbounds i64, i64*  %ln2Fm, i32  4 
  %ln2Fo = ptrtoint i64* %ln2Fn to i64
  %ln2Fp = inttoptr i64 %ln2Fo to i64*
  store i64*  %ln2Fp, i64**  %Sp_Var 
  %ln2Fq = load i64*, i64**  %Sp_Var
  %ln2Fr = getelementptr inbounds i64, i64*  %ln2Fq, i32  0 
  %ln2Fs = bitcast i64* %ln2Fr to i64*
  %ln2Ft = load i64, i64*  %ln2Fs, !tbaa !2
  %ln2Fu = inttoptr i64 %ln2Ft to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Fv = load i64*, i64**  %Sp_Var
  %ln2Fw = load i64*, i64**  %Hp_Var
  %ln2Fx = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Fu( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Fv, i64* noalias nocapture  %ln2Fw, i64  %ln2Fx, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2D0:
  %ln2Fy = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  16, i64*  %ln2Fy , !tbaa !5
  %ln2FA = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2CV_info$def to i64
  %ln2Fz = load i64*, i64**  %Sp_Var
  %ln2FB = getelementptr inbounds i64, i64*  %ln2Fz, i32  0 
  store i64  %ln2FA, i64*  %ln2FB , !tbaa !2
  %ln2FC = bitcast i8* @stg_gc_noregs to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2FD = load i64*, i64**  %Sp_Var
  %ln2FE = load i64*, i64**  %Hp_Var
  %ln2FF = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2FC( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2FD, i64* noalias nocapture  %ln2FE, i64  %ln2FF, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%Main_zdtrModule3_closure_struct = type <{i64, i64 }>
@Main_zdtrModule3_closure$def = internal global %Main_zdtrModule3_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%Main_zdtrModule4_bytes_struct*  @Main_zdtrModule4_bytes$def to i64) }>, align 8
@Main_zdtrModule3_closure =  alias i8, bitcast (%Main_zdtrModule3_closure_struct*  @Main_zdtrModule3_closure$def to i8*)
%Main_zdtrModule1_closure_struct = type <{i64, i64 }>
@Main_zdtrModule1_closure$def = internal global %Main_zdtrModule1_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_TrNameS_con_info to i64), i64 ptrtoint (%Main_zdtrModule2_bytes_struct*  @Main_zdtrModule2_bytes$def to i64) }>, align 8
@Main_zdtrModule1_closure =  alias i8, bitcast (%Main_zdtrModule1_closure_struct*  @Main_zdtrModule1_closure$def to i8*)
%Main_zdtrModule_closure_struct = type <{i64, i64, i64, i64 }>
@Main_zdtrModule_closure$def = internal global %Main_zdtrModule_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Module_con_info to i64), i64 add (i64 ptrtoint (%Main_zdtrModule3_closure_struct*  @Main_zdtrModule3_closure$def to i64),i64  1), i64 add (i64 ptrtoint (%Main_zdtrModule1_closure_struct*  @Main_zdtrModule1_closure$def to i64),i64  1), i64  3 }>, align 8
@Main_zdtrModule_closure =  alias i8, bitcast (%Main_zdtrModule_closure_struct*  @Main_zdtrModule_closure$def to i8*)
%Main_main11_closure_struct = type <{i64, i64, i64, i64, i64 }>
@Main_main11_closure$def = internal global %Main_main11_closure_struct<{i64 ptrtoint (i8*  @stg_unpack_cstring_info to i64), i64  0, i64  0, i64  0, i64 ptrtoint (%Main_main12_bytes_struct*  @Main_main12_bytes$def to i64) }>, align 8
@Main_main11_closure =  alias i8, bitcast (%Main_main11_closure_struct*  @Main_main11_closure$def to i8*)
%Main_main10_closure_struct = type <{i64, i64, i64, i64, i64 }>
@Main_main10_closure$def = internal global %Main_main10_closure_struct<{i64 ptrtoint (i8*  @stg_unpack_cstring_info to i64), i64  0, i64  0, i64  0, i64 ptrtoint (%Main_zdtrModule4_bytes_struct*  @Main_zdtrModule4_bytes$def to i64) }>, align 8
@Main_main10_closure =  alias i8, bitcast (%Main_main10_closure_struct*  @Main_main10_closure$def to i8*)
%Main_main9_closure_struct = type <{i64, i64, i64, i64, i64 }>
@Main_main9_closure$def = internal global %Main_main9_closure_struct<{i64 ptrtoint (i8*  @stg_unpack_cstring_info to i64), i64  0, i64  0, i64  0, i64 ptrtoint (%Main_zdtrModule2_bytes_struct*  @Main_zdtrModule2_bytes$def to i64) }>, align 8
@Main_main9_closure =  alias i8, bitcast (%Main_main9_closure_struct*  @Main_main9_closure$def to i8*)
%Main_main7_closure_struct = type <{i64, i64, i64, i64, i64 }>
@Main_main7_closure$def = internal global %Main_main7_closure_struct<{i64 ptrtoint (i8*  @stg_unpack_cstring_info to i64), i64  0, i64  0, i64  0, i64 ptrtoint (%Main_main8_bytes_struct*  @Main_main8_bytes$def to i64) }>, align 8
@Main_main7_closure =  alias i8, bitcast (%Main_main7_closure_struct*  @Main_main7_closure$def to i8*)
%Main_main6_closure_struct = type <{i64, i64 }>
@Main_main6_closure$def = internal global %Main_main6_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Izh_con_info to i64), i64  15 }>, align 8
@Main_main6_closure =  alias i8, bitcast (%Main_main6_closure_struct*  @Main_main6_closure$def to i8*)
%Main_main5_closure_struct = type <{i64, i64 }>
@Main_main5_closure$def = internal global %Main_main5_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Izh_con_info to i64), i64  19 }>, align 8
@Main_main5_closure =  alias i8, bitcast (%Main_main5_closure_struct*  @Main_main5_closure$def to i8*)
%Main_main4_closure_struct = type <{i64, i64 }>
@Main_main4_closure$def = internal global %Main_main4_closure_struct<{i64 ptrtoint (i8*  @ghczmprim_GHCziTypes_Izh_con_info to i64), i64  23 }>, align 8
@Main_main4_closure =  alias i8, bitcast (%Main_main4_closure_struct*  @Main_main4_closure$def to i8*)
%Main_main3_closure_struct = type <{i64, i64, i64, i64, i64, i64, i64, i64, i64 }>
@Main_main3_closure$def = internal global %Main_main3_closure_struct<{i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziStackziTypes_SrcLoc_con_info to i64), i64 ptrtoint (%Main_main10_closure_struct*  @Main_main10_closure$def to i64), i64 ptrtoint (%Main_main9_closure_struct*  @Main_main9_closure$def to i64), i64 ptrtoint (%Main_main7_closure_struct*  @Main_main7_closure$def to i64), i64 add (i64 ptrtoint (i8*  @stg_INTLIKE_closure to i64),i64  497), i64 add (i64 ptrtoint (i8*  @stg_INTLIKE_closure to i64),i64  561), i64 add (i64 ptrtoint (i8*  @stg_INTLIKE_closure to i64),i64  497), i64 add (i64 ptrtoint (i8*  @stg_INTLIKE_closure to i64),i64  625), i64  0 }>, align 8
@Main_main3_closure =  alias i8, bitcast (%Main_main3_closure_struct*  @Main_main3_closure$def to i8*)
%Main_main2_closure_struct = type <{i64, i64, i64, i64, i64 }>
@Main_main2_closure$def = internal global %Main_main2_closure_struct<{i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziStackziTypes_PushCallStack_con_info to i64), i64 ptrtoint (%Main_main11_closure_struct*  @Main_main11_closure$def to i64), i64 add (i64 ptrtoint (%Main_main3_closure_struct*  @Main_main3_closure$def to i64),i64  1), i64 add (i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziStackziTypes_EmptyCallStack_closure to i64),i64  1), i64  0 }>, align 8
@Main_main2_closure =  alias i8, bitcast (%Main_main2_closure_struct*  @Main_main2_closure$def to i8*)
%_u2Hi_srt_struct = type <{i64, i64, i64, i64 }>
%_u2Hj_srt_struct = type <{i64, i64, i64, i64 }>
%_u2Hk_srt_struct = type <{i64, i64, i64, i64 }>
%_u2Hl_srt_struct = type <{i64, i64, i64, i64 }>
%_u2Hm_srt_struct = type <{i64, i64, i64, i64, i64, i64 }>
%_u2Hn_srt_struct = type <{i64, i64, i64, i64, i64 }>
%Main_main1_closure_struct = type <{i64, i64, i64, i64, i64 }>
@_u2Hi_srt$def = internal global %_u2Hi_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziErr_errorWithoutStackTrace_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTextziRead_readEither2_closure to i64), i64  0 }>, align 8
@_u2Hi_srt = internal alias i8, bitcast (%_u2Hi_srt_struct*  @_u2Hi_srt$def to i8*)
@_u2Hj_srt$def = internal global %_u2Hj_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTextziRead_readEither5_closure to i64), i64 ptrtoint (i8*  @_u2Hi_srt to i64), i64  0 }>, align 8
@_u2Hj_srt = internal alias i8, bitcast (%_u2Hj_srt_struct*  @_u2Hj_srt$def to i8*)
@_u2Hk_srt$def = internal global %_u2Hk_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziList_head1_closure to i64), i64 ptrtoint (%Main_main2_closure_struct*  @Main_main2_closure$def to i64), i64  0 }>, align 8
@_u2Hk_srt = internal alias i8, bitcast (%_u2Hk_srt_struct*  @_u2Hk_srt$def to i8*)
@_u2Hl_srt$def = internal global %_u2Hl_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_2_info to i64), i64 ptrtoint (i8*  @_u2Hj_srt to i64), i64 ptrtoint (i8*  @_u2Hk_srt to i64), i64  0 }>, align 8
@_u2Hl_srt = internal alias i8, bitcast (%_u2Hl_srt_struct*  @_u2Hl_srt$def to i8*)
@_u2Hm_srt$def = internal global %_u2Hm_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_4_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTextziRead_readEither7_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziRead_zdwzdsreadNumber2_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziRead_zdfReadInt2_closure to i64), i64 ptrtoint (i8*  @_u2Hl_srt to i64), i64  0 }>, align 8
@_u2Hm_srt = internal alias i8, bitcast (%_u2Hm_srt_struct*  @_u2Hm_srt$def to i8*)
@_u2Hn_srt$def = internal global %_u2Hn_srt_struct<{i64 ptrtoint (i8*  @stg_SRT_3_info to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziIOziHandleziText_hPutStr2_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziIOziHandleziFD_stdout_closure to i64), i64 ptrtoint (i8*  @_u2Hm_srt to i64), i64  0 }>, align 8
@_u2Hn_srt = internal alias i8, bitcast (%_u2Hn_srt_struct*  @_u2Hn_srt$def to i8*)
@Main_main1_closure$def = internal global %Main_main1_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main1_info$def to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziForeignziMarshalziAlloc_zdwallocaBytesAligned_closure to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziSystemziEnvironment_getArgs2_closure to i64), i64 ptrtoint (i8*  @_u2Hn_srt to i64), i64  0 }>, align 8
@Main_main1_closure =  alias i8, bitcast (%Main_main1_closure_struct*  @Main_main1_closure$def to i8*)
@s2Ck_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s2Ck_info$def to i8*)
define internal ghccc void @s2Ck_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hk_srt_struct*  @_u2Hk_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s2Ck_info$def to i64)) to i32),i32  0) }>
{
n2Ho:
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2G3
c2G3:
  %ln2Hp = load i64*, i64**  %Sp_Var
  %ln2Hq = getelementptr inbounds i64, i64*  %ln2Hp, i32  -3 
  %ln2Hr = ptrtoint i64* %ln2Hq to i64
  %ln2Hs = icmp ult i64 %ln2Hr, %SpLim_Arg
  %ln2Ht = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2Hs, i1  0  ) 
  br i1  %ln2Ht, label  %c2G4, label  %c2G5
c2G5:
  %ln2Hv = ptrtoint i8* @stg_upd_frame_info to i64
  %ln2Hu = load i64*, i64**  %Sp_Var
  %ln2Hw = getelementptr inbounds i64, i64*  %ln2Hu, i32  -2 
  store i64  %ln2Hv, i64*  %ln2Hw , !tbaa !2
  %ln2Hy = load i64, i64*  %R1_Var
  %ln2Hx = load i64*, i64**  %Sp_Var
  %ln2Hz = getelementptr inbounds i64, i64*  %ln2Hx, i32  -1 
  store i64  %ln2Hy, i64*  %ln2Hz , !tbaa !2
  %ln2HB = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2FW_info$def to i64
  %ln2HA = load i64*, i64**  %Sp_Var
  %ln2HC = getelementptr inbounds i64, i64*  %ln2HA, i32  -3 
  store i64  %ln2HB, i64*  %ln2HC , !tbaa !2
  %ln2HF = load i64, i64*  %R1_Var
  %ln2HG = add i64 %ln2HF, 16
  %ln2HH = inttoptr i64 %ln2HG to i64*
  %ln2HI = load i64, i64*  %ln2HH, !tbaa !4
  store i64  %ln2HI, i64*  %R1_Var 
  %ln2HJ = load i64*, i64**  %Sp_Var
  %ln2HK = getelementptr inbounds i64, i64*  %ln2HJ, i32  -3 
  %ln2HL = ptrtoint i64* %ln2HK to i64
  %ln2HM = inttoptr i64 %ln2HL to i64*
  store i64*  %ln2HM, i64**  %Sp_Var 
  %ln2HN = load i64, i64*  %R1_Var
  %ln2HO = and i64 %ln2HN, 7
  %ln2HP = icmp ne i64 %ln2HO, 0
  br i1  %ln2HP, label  %u2Gc, label  %c2FX
c2FX:
  %ln2HR = load i64, i64*  %R1_Var
  %ln2HS = inttoptr i64 %ln2HR to i64*
  %ln2HT = load i64, i64*  %ln2HS, !tbaa !4
  %ln2HU = inttoptr i64 %ln2HT to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2HV = load i64*, i64**  %Sp_Var
  %ln2HW = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2HU( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2HV, i64* noalias nocapture  %Hp_Arg, i64  %ln2HW, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
u2Gc:
  %ln2HX = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2FW_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2HY = load i64*, i64**  %Sp_Var
  %ln2HZ = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2HX( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2HY, i64* noalias nocapture  %Hp_Arg, i64  %ln2HZ, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2G4:
  %ln2I0 = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln2I1 = bitcast i64* %ln2I0 to i64*
  %ln2I2 = load i64, i64*  %ln2I1, !tbaa !5
  %ln2I3 = inttoptr i64 %ln2I2 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2I4 = load i64*, i64**  %Sp_Var
  %ln2I5 = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2I3( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2I4, i64* noalias nocapture  %Hp_Arg, i64  %ln2I5, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2FW_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FW_info$def to i8*)
define internal ghccc void @c2FW_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hk_srt_struct*  @_u2Hk_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FW_info$def to i64)) to i32),i32  0) }>
{
n2I6:
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c2FW
c2FW:
  %ln2I7 = load i64, i64*  %R1_Var
  %ln2I8 = and i64 %ln2I7, 7
switch i64  %ln2I8, label  %c2G0 [
  i64  1, label  %c2G0
  i64  2, label  %c2G1
]
c2G0:
  %ln2I9 = ptrtoint %Main_main2_closure_struct* @Main_main2_closure$def to i64
  %ln2Ia = add i64 %ln2I9, 2
  store i64  %ln2Ia, i64*  %R2_Var 
  %ln2Ib = load i64*, i64**  %Sp_Var
  %ln2Ic = getelementptr inbounds i64, i64*  %ln2Ib, i32  1 
  %ln2Id = ptrtoint i64* %ln2Ic to i64
  %ln2Ie = inttoptr i64 %ln2Id to i64*
  store i64*  %ln2Ie, i64**  %Sp_Var 
  %ln2If = bitcast i8* @ghczminternal_GHCziInternalziList_head1_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Ig = load i64*, i64**  %Sp_Var
  %ln2Ih = load i64, i64*  %R1_Var
  %ln2Ii = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2If( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Ig, i64* noalias nocapture  %Hp_Arg, i64  %ln2Ih, i64  %ln2Ii, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2G1:
  %ln2Il = load i64, i64*  %R1_Var
  %ln2Im = add i64 %ln2Il, 6
  %ln2In = inttoptr i64 %ln2Im to i64*
  %ln2Io = load i64, i64*  %ln2In, !tbaa !4
  %ln2Ip = and i64 %ln2Io, -8
  store i64  %ln2Ip, i64*  %R1_Var 
  %ln2Iq = load i64*, i64**  %Sp_Var
  %ln2Ir = getelementptr inbounds i64, i64*  %ln2Iq, i32  1 
  %ln2Is = ptrtoint i64* %ln2Ir to i64
  %ln2It = inttoptr i64 %ln2Is to i64*
  store i64*  %ln2It, i64**  %Sp_Var 
  %ln2Iv = load i64, i64*  %R1_Var
  %ln2Iw = inttoptr i64 %ln2Iv to i64*
  %ln2Ix = load i64, i64*  %ln2Iw, !tbaa !4
  %ln2Iy = inttoptr i64 %ln2Ix to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Iz = load i64*, i64**  %Sp_Var
  %ln2IA = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Iy( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Iz, i64* noalias nocapture  %Hp_Arg, i64  %ln2IA, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@s2CC_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s2CC_info$def to i8*)
define internal ghccc void @s2CC_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  16, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hm_srt_struct*  @_u2Hm_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @s2CC_info$def to i64)) to i32),i32  0) }>
{
n2IB:
  %R4_Var = alloca i64, i32  1
  store i64  undef, i64*  %R4_Var 
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2Gg
c2Gg:
  %ln2IC = load i64*, i64**  %Sp_Var
  %ln2ID = getelementptr inbounds i64, i64*  %ln2IC, i32  -4 
  %ln2IE = ptrtoint i64* %ln2ID to i64
  %ln2IF = icmp ult i64 %ln2IE, %SpLim_Arg
  %ln2IG = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2IF, i1  0  ) 
  br i1  %ln2IG, label  %c2Gh, label  %c2Gi
c2Gi:
  %ln2II = ptrtoint i8* @stg_upd_frame_info to i64
  %ln2IH = load i64*, i64**  %Sp_Var
  %ln2IJ = getelementptr inbounds i64, i64*  %ln2IH, i32  -2 
  store i64  %ln2II, i64*  %ln2IJ , !tbaa !2
  %ln2IK = load i64*, i64**  %Sp_Var
  %ln2IL = getelementptr inbounds i64, i64*  %ln2IK, i32  -1 
  store i64  %R1_Arg, i64*  %ln2IL , !tbaa !2
  %ln2IN = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2FQ_info$def to i64
  %ln2IM = load i64*, i64**  %Sp_Var
  %ln2IO = getelementptr inbounds i64, i64*  %ln2IM, i32  -4 
  store i64  %ln2IN, i64*  %ln2IO , !tbaa !2
  %ln2IP = ptrtoint i8* @ghczminternal_GHCziInternalziTextziRead_readEither7_closure to i64
  %ln2IQ = add i64 %ln2IP, 1
  store i64  %ln2IQ, i64*  %R4_Var 
  %ln2IR = ptrtoint i8* @ghczminternal_GHCziInternalziTextziParserCombinatorsziReadPrec_minPrec_closure to i64
  %ln2IS = add i64 %ln2IR, 1
  store i64  %ln2IS, i64*  %R3_Var 
  %ln2IT = ptrtoint i8* @ghczminternal_GHCziInternalziRead_zdfReadInt2_closure to i64
  %ln2IU = add i64 %ln2IT, 3
  store i64  %ln2IU, i64*  %R2_Var 
  %ln2IW = add i64 %R1_Arg, 16
  %ln2IX = inttoptr i64 %ln2IW to i64*
  %ln2IY = load i64, i64*  %ln2IX, !tbaa !4
  %ln2IV = load i64*, i64**  %Sp_Var
  %ln2IZ = getelementptr inbounds i64, i64*  %ln2IV, i32  -3 
  store i64  %ln2IY, i64*  %ln2IZ , !tbaa !2
  %ln2J0 = load i64*, i64**  %Sp_Var
  %ln2J1 = getelementptr inbounds i64, i64*  %ln2J0, i32  -4 
  %ln2J2 = ptrtoint i64* %ln2J1 to i64
  %ln2J3 = inttoptr i64 %ln2J2 to i64*
  store i64*  %ln2J3, i64**  %Sp_Var 
  %ln2J4 = bitcast i8* @ghczminternal_GHCziInternalziRead_zdwzdsreadNumber2_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2J5 = load i64*, i64**  %Sp_Var
  %ln2J6 = load i64, i64*  %R2_Var
  %ln2J7 = load i64, i64*  %R3_Var
  %ln2J8 = load i64, i64*  %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2J4( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2J5, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %ln2J6, i64  %ln2J7, i64  %ln2J8, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2Gh:
  %ln2J9 = getelementptr inbounds i64, i64*  %Base_Arg, i32  -2 
  %ln2Ja = bitcast i64* %ln2J9 to i64*
  %ln2Jb = load i64, i64*  %ln2Ja, !tbaa !5
  %ln2Jc = inttoptr i64 %ln2Jb to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Jd = load i64*, i64**  %Sp_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Jc( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Jd, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2FQ_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FQ_info$def to i8*)
define internal ghccc void @c2FQ_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hl_srt_struct*  @_u2Hl_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FQ_info$def to i64)) to i32),i32  0) }>
{
n2Je:
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2FQ
c2FQ:
  %ln2Jf = load i64*, i64**  %Hp_Var
  %ln2Jg = getelementptr inbounds i64, i64*  %ln2Jf, i32  5 
  %ln2Jh = ptrtoint i64* %ln2Jg to i64
  %ln2Ji = inttoptr i64 %ln2Jh to i64*
  store i64*  %ln2Ji, i64**  %Hp_Var 
  %ln2Jj = load i64*, i64**  %Hp_Var
  %ln2Jk = ptrtoint i64* %ln2Jj to i64
  %ln2Jl = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln2Jm = bitcast i64* %ln2Jl to i64*
  %ln2Jn = load i64, i64*  %ln2Jm, !tbaa !5
  %ln2Jo = icmp ugt i64 %ln2Jk, %ln2Jn
  %ln2Jp = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2Jo, i1  0  ) 
  br i1  %ln2Jp, label  %c2Gl, label  %c2Gk
c2Gk:
  %ln2Jr = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s2Ck_info$def to i64
  %ln2Jq = load i64*, i64**  %Hp_Var
  %ln2Js = getelementptr inbounds i64, i64*  %ln2Jq, i32  -4 
  store i64  %ln2Jr, i64*  %ln2Js , !tbaa !3
  %ln2Ju = load i64*, i64**  %Sp_Var
  %ln2Jv = getelementptr inbounds i64, i64*  %ln2Ju, i32  1 
  %ln2Jw = bitcast i64* %ln2Jv to i64*
  %ln2Jx = load i64, i64*  %ln2Jw, !tbaa !2
  %ln2Jt = load i64*, i64**  %Hp_Var
  %ln2Jy = getelementptr inbounds i64, i64*  %ln2Jt, i32  -2 
  store i64  %ln2Jx, i64*  %ln2Jy , !tbaa !3
  %ln2JA = ptrtoint i8* @ghczminternal_GHCziInternalziTextziParserCombinatorsziReadP_Look_con_info to i64
  %ln2Jz = load i64*, i64**  %Hp_Var
  %ln2JB = getelementptr inbounds i64, i64*  %ln2Jz, i32  -1 
  store i64  %ln2JA, i64*  %ln2JB , !tbaa !3
  %ln2JC = load i64*, i64**  %Hp_Var
  %ln2JD = getelementptr inbounds i64, i64*  %ln2JC, i32  0 
  store i64  %R1_Arg, i64*  %ln2JD , !tbaa !3
  %ln2JF = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2Ge_info$def to i64
  %ln2JE = load i64*, i64**  %Sp_Var
  %ln2JG = getelementptr inbounds i64, i64*  %ln2JE, i32  1 
  store i64  %ln2JF, i64*  %ln2JG , !tbaa !2
  %ln2JH = load i64*, i64**  %Hp_Var
  %ln2JI = getelementptr inbounds i64, i64*  %ln2JH, i32  -4 
  %ln2JJ = ptrtoint i64* %ln2JI to i64
  store i64  %ln2JJ, i64*  %R3_Var 
  %ln2JL = load i64*, i64**  %Hp_Var
  %ln2JM = ptrtoint i64* %ln2JL to i64
  %ln2JN = add i64 %ln2JM, -6
  store i64  %ln2JN, i64*  %R2_Var 
  %ln2JO = load i64*, i64**  %Sp_Var
  %ln2JP = getelementptr inbounds i64, i64*  %ln2JO, i32  1 
  %ln2JQ = ptrtoint i64* %ln2JP to i64
  %ln2JR = inttoptr i64 %ln2JQ to i64*
  store i64*  %ln2JR, i64**  %Sp_Var 
  %ln2JS = bitcast i8* @ghczminternal_GHCziInternalziTextziParserCombinatorsziReadP_run_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2JT = load i64*, i64**  %Sp_Var
  %ln2JU = load i64*, i64**  %Hp_Var
  %ln2JV = load i64, i64*  %R2_Var
  %ln2JW = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2JS( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2JT, i64* noalias nocapture  %ln2JU, i64  %R1_Arg, i64  %ln2JV, i64  %ln2JW, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2Gl:
  %ln2JX = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  40, i64*  %ln2JX , !tbaa !5
  %ln2JY = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2JZ = load i64*, i64**  %Sp_Var
  %ln2K0 = load i64*, i64**  %Hp_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2JY( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2JZ, i64* noalias nocapture  %ln2K0, i64  %R1_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2Ge_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Ge_info$def to i8*)
define internal ghccc void @c2Ge_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hj_srt_struct*  @_u2Hj_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Ge_info$def to i64)) to i32),i32  0) }>
{
n2K1:
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  br label  %c2Ge
c2Ge:
  %ln2K2 = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2Go_info$def to i64
  %ln2K3 = getelementptr inbounds i64, i64*  %Sp_Arg, i32  0 
  store i64  %ln2K2, i64*  %ln2K3 , !tbaa !2
  store i64  %R1_Arg, i64*  %R2_Var 
  %ln2K4 = bitcast i8* @ghczminternal_GHCziInternalziTextziRead_readEither8_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2K5 = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2K4( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %ln2K5, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2Go_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Go_info$def to i8*)
define internal ghccc void @c2Go_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hj_srt_struct*  @_u2Hj_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Go_info$def to i64)) to i32),i32  0) }>
{
n2K6:
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %ls2Co = alloca i64, i32  1
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c2Go
c2Go:
  %ln2K7 = load i64, i64*  %R1_Var
  %ln2K8 = and i64 %ln2K7, 7
switch i64  %ln2K8, label  %c2Gv [
  i64  1, label  %c2Gv
  i64  2, label  %c2GA
]
c2Gv:
  %ln2K9 = ptrtoint i8* @ghczminternal_GHCziInternalziTextziRead_readEither5_closure to i64
  store i64  %ln2K9, i64*  %R2_Var 
  %ln2Ka = load i64*, i64**  %Sp_Var
  %ln2Kb = getelementptr inbounds i64, i64*  %ln2Ka, i32  1 
  %ln2Kc = ptrtoint i64* %ln2Kb to i64
  %ln2Kd = inttoptr i64 %ln2Kc to i64*
  store i64*  %ln2Kd, i64**  %Sp_Var 
  %ln2Ke = bitcast i8* @ghczminternal_GHCziInternalziErr_errorWithoutStackTrace_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Kf = load i64*, i64**  %Sp_Var
  %ln2Kg = load i64, i64*  %R1_Var
  %ln2Kh = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Ke( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Kf, i64* noalias nocapture  %Hp_Arg, i64  %ln2Kg, i64  %ln2Kh, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2GA:
  %ln2Kj = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2Gy_info$def to i64
  %ln2Ki = load i64*, i64**  %Sp_Var
  %ln2Kk = getelementptr inbounds i64, i64*  %ln2Ki, i32  -1 
  store i64  %ln2Kj, i64*  %ln2Kk , !tbaa !2
  %ln2Kn = load i64, i64*  %R1_Var
  %ln2Ko = add i64 %ln2Kn, 6
  %ln2Kp = inttoptr i64 %ln2Ko to i64*
  %ln2Kq = load i64, i64*  %ln2Kp, !tbaa !4
  store i64  %ln2Kq, i64*  %ls2Co 
  %ln2Kt = load i64, i64*  %R1_Var
  %ln2Ku = add i64 %ln2Kt, 14
  %ln2Kv = inttoptr i64 %ln2Ku to i64*
  %ln2Kw = load i64, i64*  %ln2Kv, !tbaa !4
  store i64  %ln2Kw, i64*  %R1_Var 
  %ln2Ky = load i64, i64*  %ls2Co
  %ln2Kx = load i64*, i64**  %Sp_Var
  %ln2Kz = getelementptr inbounds i64, i64*  %ln2Kx, i32  0 
  store i64  %ln2Ky, i64*  %ln2Kz , !tbaa !2
  %ln2KA = load i64*, i64**  %Sp_Var
  %ln2KB = getelementptr inbounds i64, i64*  %ln2KA, i32  -1 
  %ln2KC = ptrtoint i64* %ln2KB to i64
  %ln2KD = inttoptr i64 %ln2KC to i64*
  store i64*  %ln2KD, i64**  %Sp_Var 
  %ln2KE = load i64, i64*  %R1_Var
  %ln2KF = and i64 %ln2KE, 7
  %ln2KG = icmp ne i64 %ln2KF, 0
  br i1  %ln2KG, label  %u2Ha, label  %c2GB
c2GB:
  %ln2KI = load i64, i64*  %R1_Var
  %ln2KJ = inttoptr i64 %ln2KI to i64*
  %ln2KK = load i64, i64*  %ln2KJ, !tbaa !4
  %ln2KL = inttoptr i64 %ln2KK to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2KM = load i64*, i64**  %Sp_Var
  %ln2KN = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2KL( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2KM, i64* noalias nocapture  %Hp_Arg, i64  %ln2KN, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
u2Ha:
  %ln2KO = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2Gy_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2KP = load i64*, i64**  %Sp_Var
  %ln2KQ = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2KO( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2KP, i64* noalias nocapture  %Hp_Arg, i64  %ln2KQ, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2Gy_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Gy_info$def to i8*)
define internal ghccc void @c2Gy_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  1, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hi_srt_struct*  @_u2Hi_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2Gy_info$def to i64)) to i32),i32  0) }>
{
n2KR:
  %ls2Co = alloca i64, i32  1
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  br label  %c2Gy
c2Gy:
  %ln2KS = load i64, i64*  %R1_Var
  %ln2KT = and i64 %ln2KS, 7
switch i64  %ln2KT, label  %c2GI [
  i64  1, label  %c2GI
  i64  2, label  %c2H2
]
c2GI:
  %ln2KU = load i64*, i64**  %Sp_Var
  %ln2KV = getelementptr inbounds i64, i64*  %ln2KU, i32  1 
  %ln2KW = bitcast i64* %ln2KV to i64*
  %ln2KX = load i64, i64*  %ln2KW, !tbaa !2
  store i64  %ln2KX, i64*  %ls2Co 
  %ln2KZ = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2GF_info$def to i64
  %ln2KY = load i64*, i64**  %Sp_Var
  %ln2L0 = getelementptr inbounds i64, i64*  %ln2KY, i32  1 
  store i64  %ln2KZ, i64*  %ln2L0 , !tbaa !2
  %ln2L1 = load i64, i64*  %ls2Co
  store i64  %ln2L1, i64*  %R1_Var 
  %ln2L2 = load i64*, i64**  %Sp_Var
  %ln2L3 = getelementptr inbounds i64, i64*  %ln2L2, i32  1 
  %ln2L4 = ptrtoint i64* %ln2L3 to i64
  %ln2L5 = inttoptr i64 %ln2L4 to i64*
  store i64*  %ln2L5, i64**  %Sp_Var 
  %ln2L6 = load i64, i64*  %R1_Var
  %ln2L7 = and i64 %ln2L6, 7
  %ln2L8 = icmp ne i64 %ln2L7, 0
  br i1  %ln2L8, label  %u2Hb, label  %c2GJ
c2GJ:
  %ln2La = load i64, i64*  %R1_Var
  %ln2Lb = inttoptr i64 %ln2La to i64*
  %ln2Lc = load i64, i64*  %ln2Lb, !tbaa !4
  %ln2Ld = inttoptr i64 %ln2Lc to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Le = load i64*, i64**  %Sp_Var
  %ln2Lf = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Ld( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Le, i64* noalias nocapture  %Hp_Arg, i64  %ln2Lf, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
u2Hb:
  %ln2Lg = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2GF_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Lh = load i64*, i64**  %Sp_Var
  %ln2Li = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Lg( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Lh, i64* noalias nocapture  %Hp_Arg, i64  %ln2Li, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2H2:
  %ln2Lj = ptrtoint i8* @ghczminternal_GHCziInternalziTextziRead_readEither2_closure to i64
  store i64  %ln2Lj, i64*  %R2_Var 
  %ln2Lk = load i64*, i64**  %Sp_Var
  %ln2Ll = getelementptr inbounds i64, i64*  %ln2Lk, i32  2 
  %ln2Lm = ptrtoint i64* %ln2Ll to i64
  %ln2Ln = inttoptr i64 %ln2Lm to i64*
  store i64*  %ln2Ln, i64**  %Sp_Var 
  %ln2Lo = bitcast i8* @ghczminternal_GHCziInternalziErr_errorWithoutStackTrace_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Lp = load i64*, i64**  %Sp_Var
  %ln2Lq = load i64, i64*  %R1_Var
  %ln2Lr = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Lo( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Lp, i64* noalias nocapture  %Hp_Arg, i64  %ln2Lq, i64  %ln2Lr, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2GF_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2GF_info$def to i8*)
define internal ghccc void @c2GF_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32  0 }>
{
n2Ls:
  %ls2Cs = alloca i64, i32  1
  %ls2Cv = alloca i64, i32  1
  %ls2Cu = alloca i64, i32  1
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2GF
c2GF:
  %ln2Lt = add i64 %R1_Arg, 7
  %ln2Lu = inttoptr i64 %ln2Lt to i64*
  %ln2Lv = load i64, i64*  %ln2Lu, !tbaa !4
  store i64  %ln2Lv, i64*  %ls2Cs 
  store i64  0, i64*  %ls2Cv 
  store i64  1, i64*  %ls2Cu 
  br label  %c2GQ
c2GQ:
  %ln2Lw = load i64, i64*  %ls2Cu
  %ln2Lx = load i64, i64*  %ls2Cs
  %ln2Ly = icmp sgt i64 %ln2Lw, %ln2Lx
  %ln2Lz = zext i1 %ln2Ly to i64
switch i64  %ln2Lz, label  %c2GX [
  i64  1, label  %c2GY
]
c2GX:
  %ln2LA = load i64, i64*  %ls2Cv
  %ln2LB = load i64, i64*  %ls2Cu
  %ln2LC = add i64 %ln2LA, %ln2LB
  store i64  %ln2LC, i64*  %ls2Cv 
  %ln2LD = load i64, i64*  %ls2Cu
  %ln2LE = add i64 %ln2LD, 1
  store i64  %ln2LE, i64*  %ls2Cu 
  br label  %c2GQ
c2GY:
  %ln2LF = ptrtoint i8* @ghczmprim_GHCziTypes_ZMZN_closure to i64
  %ln2LG = add i64 %ln2LF, 1
  store i64  %ln2LG, i64*  %R3_Var 
  %ln2LH = load i64, i64*  %ls2Cv
  store i64  %ln2LH, i64*  %R2_Var 
  %ln2LI = load i64*, i64**  %Sp_Var
  %ln2LJ = getelementptr inbounds i64, i64*  %ln2LI, i32  1 
  %ln2LK = ptrtoint i64* %ln2LJ to i64
  %ln2LL = inttoptr i64 %ln2LK to i64*
  store i64*  %ln2LL, i64**  %Sp_Var 
  %ln2LM = bitcast i8* @ghczminternal_GHCziInternalziShow_itos_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2LN = load i64*, i64**  %Sp_Var
  %ln2LO = load i64, i64*  %R2_Var
  %ln2LP = load i64, i64*  %R3_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2LM( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2LN, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %ln2LO, i64  %ln2LP, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@Main_main1_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main1_info$def to i8*)
define  ghccc void @Main_main1_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967299, i64  3, i32  14, i32  0 }>
{
n2LQ:
  %R4_Var = alloca i64, i32  1
  store i64  undef, i64*  %R4_Var 
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  %R1_Var = alloca i64, i32  1
  store i64  %R1_Arg, i64*  %R1_Var 
  br label  %c2Hc
c2Hc:
  %ln2LR = load i64*, i64**  %Sp_Var
  %ln2LS = getelementptr inbounds i64, i64*  %ln2LR, i32  -1 
  %ln2LT = ptrtoint i64* %ln2LS to i64
  %ln2LU = icmp ult i64 %ln2LT, %SpLim_Arg
  %ln2LV = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2LU, i1  0  ) 
  br i1  %ln2LV, label  %c2Hd, label  %c2He
c2He:
  %ln2LX = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @c2FK_info$def to i64
  %ln2LW = load i64*, i64**  %Sp_Var
  %ln2LY = getelementptr inbounds i64, i64*  %ln2LW, i32  -1 
  store i64  %ln2LX, i64*  %ln2LY , !tbaa !2
  %ln2LZ = ptrtoint i8* @ghczminternal_GHCziInternalziSystemziEnvironment_getArgs2_closure to i64
  %ln2M0 = add i64 %ln2LZ, 2
  store i64  %ln2M0, i64*  %R4_Var 
  store i64  4, i64*  %R3_Var 
  store i64  4, i64*  %R2_Var 
  %ln2M1 = load i64*, i64**  %Sp_Var
  %ln2M2 = getelementptr inbounds i64, i64*  %ln2M1, i32  -1 
  %ln2M3 = ptrtoint i64* %ln2M2 to i64
  %ln2M4 = inttoptr i64 %ln2M3 to i64*
  store i64*  %ln2M4, i64**  %Sp_Var 
  %ln2M5 = bitcast i8* @ghczminternal_GHCziInternalziForeignziMarshalziAlloc_zdwallocaBytesAligned_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2M6 = load i64*, i64**  %Sp_Var
  %ln2M7 = load i64, i64*  %R1_Var
  %ln2M8 = load i64, i64*  %R2_Var
  %ln2M9 = load i64, i64*  %R3_Var
  %ln2Ma = load i64, i64*  %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2M5( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2M6, i64* noalias nocapture  %Hp_Arg, i64  %ln2M7, i64  %ln2M8, i64  %ln2M9, i64  %ln2Ma, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2Hd:
  %ln2Mb = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  store i64  %ln2Mb, i64*  %R1_Var 
  %ln2Mc = getelementptr inbounds i64, i64*  %Base_Arg, i32  -1 
  %ln2Md = bitcast i64* %ln2Mc to i64*
  %ln2Me = load i64, i64*  %ln2Md, !tbaa !5
  %ln2Mf = inttoptr i64 %ln2Me to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Mg = load i64*, i64**  %Sp_Var
  %ln2Mh = load i64, i64*  %R1_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Mf( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2Mg, i64* noalias nocapture  %Hp_Arg, i64  %ln2Mh, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@c2FK_info = internal alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FK_info$def to i8*)
define internal ghccc void @c2FK_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i32, i32 }><{i64  0, i32  30, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%_u2Hn_srt_struct*  @_u2Hn_srt$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @c2FK_info$def to i64)) to i32),i32  0) }>
{
n2Mi:
  %Hp_Var = alloca i64*, i32  1
  store i64*  %Hp_Arg, i64**  %Hp_Var 
  %R4_Var = alloca i64, i32  1
  store i64  undef, i64*  %R4_Var 
  %R3_Var = alloca i64, i32  1
  store i64  undef, i64*  %R3_Var 
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  %Sp_Var = alloca i64*, i32  1
  store i64*  %Sp_Arg, i64**  %Sp_Var 
  br label  %c2FK
c2FK:
  %ln2Mj = load i64*, i64**  %Hp_Var
  %ln2Mk = getelementptr inbounds i64, i64*  %ln2Mj, i32  3 
  %ln2Ml = ptrtoint i64* %ln2Mk to i64
  %ln2Mm = inttoptr i64 %ln2Ml to i64*
  store i64*  %ln2Mm, i64**  %Hp_Var 
  %ln2Mn = load i64*, i64**  %Hp_Var
  %ln2Mo = ptrtoint i64* %ln2Mn to i64
  %ln2Mp = getelementptr inbounds i64, i64*  %Base_Arg, i32  107 
  %ln2Mq = bitcast i64* %ln2Mp to i64*
  %ln2Mr = load i64, i64*  %ln2Mq, !tbaa !5
  %ln2Ms = icmp ugt i64 %ln2Mo, %ln2Mr
  %ln2Mt = call ccc i1 (i1, i1 ) @llvm.expect.i1( i1  %ln2Ms, i1  0  ) 
  br i1  %ln2Mt, label  %c2Hh, label  %c2Hg
c2Hg:
  %ln2Mv = ptrtoint void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @s2CC_info$def to i64
  %ln2Mu = load i64*, i64**  %Hp_Var
  %ln2Mw = getelementptr inbounds i64, i64*  %ln2Mu, i32  -2 
  store i64  %ln2Mv, i64*  %ln2Mw , !tbaa !3
  %ln2Mx = load i64*, i64**  %Hp_Var
  %ln2My = getelementptr inbounds i64, i64*  %ln2Mx, i32  0 
  store i64  %R1_Arg, i64*  %ln2My , !tbaa !3
  %ln2Mz = ptrtoint i8* @ghczmprim_GHCziTypes_True_closure to i64
  %ln2MA = add i64 %ln2Mz, 2
  store i64  %ln2MA, i64*  %R4_Var 
  %ln2MB = load i64*, i64**  %Hp_Var
  %ln2MC = getelementptr inbounds i64, i64*  %ln2MB, i32  -2 
  %ln2MD = ptrtoint i64* %ln2MC to i64
  store i64  %ln2MD, i64*  %R3_Var 
  %ln2ME = ptrtoint i8* @ghczminternal_GHCziInternalziIOziHandleziFD_stdout_closure to i64
  store i64  %ln2ME, i64*  %R2_Var 
  %ln2MF = load i64*, i64**  %Sp_Var
  %ln2MG = getelementptr inbounds i64, i64*  %ln2MF, i32  1 
  %ln2MH = ptrtoint i64* %ln2MG to i64
  %ln2MI = inttoptr i64 %ln2MH to i64*
  store i64*  %ln2MI, i64**  %Sp_Var 
  %ln2MJ = bitcast i8* @ghczminternal_GHCziInternalziIOziHandleziText_hPutStr2_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2MK = load i64*, i64**  %Sp_Var
  %ln2ML = load i64*, i64**  %Hp_Var
  %ln2MM = load i64, i64*  %R2_Var
  %ln2MN = load i64, i64*  %R3_Var
  %ln2MO = load i64, i64*  %R4_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2MJ( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2MK, i64* noalias nocapture  %ln2ML, i64  %R1_Arg, i64  %ln2MM, i64  %ln2MN, i64  %ln2MO, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
c2Hh:
  %ln2MP = getelementptr inbounds i64, i64*  %Base_Arg, i32  113 
  store i64  24, i64*  %ln2MP , !tbaa !5
  %ln2MQ = bitcast i8* @stg_gc_unpt_r1 to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2MR = load i64*, i64**  %Sp_Var
  %ln2MS = load i64*, i64**  %Hp_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2MQ( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %ln2MR, i64* noalias nocapture  %ln2MS, i64  %R1_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%Main_main_closure_struct = type <{i64, i64 }>
@Main_main_closure$def = internal global %Main_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i64), i64  0 }>, align 8
@Main_main_closure =  alias i8, bitcast (%Main_main_closure_struct*  @Main_main_closure$def to i8*)
@Main_main_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i8*)
define  ghccc void @Main_main_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967299, i64  0, i32  14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main1_closure_struct*  @Main_main1_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main_info$def to i64)) to i32),i32  0) }>
{
n2N0:
  br label  %c2MX
c2MX:
  %ln2N1 = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @Main_main1_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2N1( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%Main_main13_closure_struct = type <{i64, i64, i64, i64 }>
@Main_main13_closure$def = internal global %Main_main13_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main13_info$def to i64), i64 ptrtoint (i8*  @ghczminternal_GHCziInternalziTopHandler_runMainIO1_closure to i64), i64 ptrtoint (%Main_main1_closure_struct*  @Main_main1_closure$def to i64), i64  0 }>, align 8
@Main_main13_closure =  alias i8, bitcast (%Main_main13_closure_struct*  @Main_main13_closure$def to i8*)
@Main_main13_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @Main_main13_info$def to i8*)
define  ghccc void @Main_main13_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967299, i64  2, i32  14, i32  0 }>
{
n2N9:
  %R2_Var = alloca i64, i32  1
  store i64  undef, i64*  %R2_Var 
  br label  %c2N6
c2N6:
  %ln2Na = ptrtoint %Main_main1_closure_struct* @Main_main1_closure$def to i64
  %ln2Nb = add i64 %ln2Na, 1
  store i64  %ln2Nb, i64*  %R2_Var 
  %ln2Nc = bitcast i8* @ghczminternal_GHCziInternalziTopHandler_runMainIO1_info to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  %ln2Nd = load i64, i64*  %R2_Var
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Nc( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %ln2Nd, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
%ZCMain_main_closure_struct = type <{i64, i64 }>
@ZCMain_main_closure$def = internal global %ZCMain_main_closure_struct<{i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i64), i64  0 }>, align 8
@ZCMain_main_closure =  alias i8, bitcast (%ZCMain_main_closure_struct*  @ZCMain_main_closure$def to i8*)
@ZCMain_main_info =  alias i8, bitcast (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i8*)
define  ghccc void @ZCMain_main_info$def(i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  %R2_Arg, i64  %R3_Arg, i64  %R4_Arg, i64  %R5_Arg, i64  %R6_Arg, i64  %SpLim_Arg ) align 8 nounwind   prefix <{i64, i64, i32, i32 }><{i64  4294967299, i64  0, i32  14, i32 add (i32 trunc (i64 sub (i64 ptrtoint (%Main_main13_closure_struct*  @Main_main13_closure$def to i64),i64 ptrtoint (void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*  @ZCMain_main_info$def to i64)) to i32),i32  0) }>
{
n2Nl:
  br label  %c2Ni
c2Ni:
  %ln2Nm = bitcast void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )* @Main_main13_info$def to void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 )*
  tail call ghccc void (i64*, i64*, i64*, i64, i64, i64, i64, i64, i64, i64 ) %ln2Nm( i64* noalias nocapture  %Base_Arg, i64* noalias nocapture  %Sp_Arg, i64* noalias nocapture  %Hp_Arg, i64  %R1_Arg, i64  undef, i64  undef, i64  undef, i64  undef, i64  undef, i64  %SpLim_Arg  ) nounwind 
  ret void
}
@ghczmprim_GHCziTypes_Izh_con_info = external global i8
@stg_INTLIKE_closure = external global i8
@stg_gc_noregs = external global i8
@ghczmprim_GHCziTypes_TrNameS_con_info = external global i8
@ghczmprim_GHCziTypes_Module_con_info = external global i8
@stg_unpack_cstring_info = external global i8
@ghczminternal_GHCziInternalziStackziTypes_SrcLoc_con_info = external global i8
@ghczminternal_GHCziInternalziStackziTypes_PushCallStack_con_info = external global i8
@ghczminternal_GHCziInternalziStackziTypes_EmptyCallStack_closure = external global i8
@stg_SRT_2_info = external global i8
@ghczminternal_GHCziInternalziErr_errorWithoutStackTrace_closure = external global i8
@ghczminternal_GHCziInternalziTextziRead_readEither2_closure = external global i8
@ghczminternal_GHCziInternalziTextziRead_readEither5_closure = external global i8
@ghczminternal_GHCziInternalziList_head1_closure = external global i8
@stg_SRT_4_info = external global i8
@ghczminternal_GHCziInternalziTextziRead_readEither7_closure = external global i8
@ghczminternal_GHCziInternalziRead_zdwzdsreadNumber2_closure = external global i8
@ghczminternal_GHCziInternalziRead_zdfReadInt2_closure = external global i8
@stg_SRT_3_info = external global i8
@ghczminternal_GHCziInternalziIOziHandleziText_hPutStr2_closure = external global i8
@ghczminternal_GHCziInternalziIOziHandleziFD_stdout_closure = external global i8
@ghczminternal_GHCziInternalziForeignziMarshalziAlloc_zdwallocaBytesAligned_closure = external global i8
@ghczminternal_GHCziInternalziSystemziEnvironment_getArgs2_closure = external global i8
@stg_upd_frame_info = external global i8
@ghczminternal_GHCziInternalziList_head1_info = external global i8
@ghczminternal_GHCziInternalziTextziParserCombinatorsziReadPrec_minPrec_closure = external global i8
@ghczminternal_GHCziInternalziRead_zdwzdsreadNumber2_info = external global i8
@ghczminternal_GHCziInternalziTextziParserCombinatorsziReadP_Look_con_info = external global i8
@ghczminternal_GHCziInternalziTextziParserCombinatorsziReadP_run_info = external global i8
@stg_gc_unpt_r1 = external global i8
@ghczminternal_GHCziInternalziTextziRead_readEither8_info = external global i8
@ghczminternal_GHCziInternalziErr_errorWithoutStackTrace_info = external global i8
@ghczmprim_GHCziTypes_ZMZN_closure = external global i8
@ghczminternal_GHCziInternalziShow_itos_info = external global i8
@ghczminternal_GHCziInternalziForeignziMarshalziAlloc_zdwallocaBytesAligned_info = external global i8
@ghczmprim_GHCziTypes_True_closure = external global i8
@ghczminternal_GHCziInternalziIOziHandleziText_hPutStr2_info = external global i8
@ghczminternal_GHCziInternalziTopHandler_runMainIO1_closure = external global i8
@ghczminternal_GHCziInternalziTopHandler_runMainIO1_info = external global i8
@llvm.used = appending constant [29 x i8*] [i8* bitcast (%ZCMain_main_closure_struct*  @ZCMain_main_closure$def to i8*), i8* bitcast (%Main_main13_closure_struct*  @Main_main13_closure$def to i8*), i8* bitcast (%Main_main_closure_struct*  @Main_main_closure$def to i8*), i8* bitcast (%Main_main1_closure_struct*  @Main_main1_closure$def to i8*), i8* bitcast (%_u2Hn_srt_struct*  @_u2Hn_srt$def to i8*), i8* bitcast (%_u2Hm_srt_struct*  @_u2Hm_srt$def to i8*), i8* bitcast (%_u2Hl_srt_struct*  @_u2Hl_srt$def to i8*), i8* bitcast (%_u2Hk_srt_struct*  @_u2Hk_srt$def to i8*), i8* bitcast (%_u2Hj_srt_struct*  @_u2Hj_srt$def to i8*), i8* bitcast (%_u2Hi_srt_struct*  @_u2Hi_srt$def to i8*), i8* bitcast (%Main_main2_closure_struct*  @Main_main2_closure$def to i8*), i8* bitcast (%Main_main3_closure_struct*  @Main_main3_closure$def to i8*), i8* bitcast (%Main_main4_closure_struct*  @Main_main4_closure$def to i8*), i8* bitcast (%Main_main5_closure_struct*  @Main_main5_closure$def to i8*), i8* bitcast (%Main_main6_closure_struct*  @Main_main6_closure$def to i8*), i8* bitcast (%Main_main7_closure_struct*  @Main_main7_closure$def to i8*), i8* bitcast (%Main_main9_closure_struct*  @Main_main9_closure$def to i8*), i8* bitcast (%Main_main10_closure_struct*  @Main_main10_closure$def to i8*), i8* bitcast (%Main_main11_closure_struct*  @Main_main11_closure$def to i8*), i8* bitcast (%Main_zdtrModule_closure_struct*  @Main_zdtrModule_closure$def to i8*), i8* bitcast (%Main_zdtrModule1_closure_struct*  @Main_zdtrModule1_closure$def to i8*), i8* bitcast (%Main_zdtrModule3_closure_struct*  @Main_zdtrModule3_closure$def to i8*), i8* bitcast (%Main_sumNumbers_closure_struct*  @Main_sumNumbers_closure$def to i8*), i8* bitcast (%Main_sumNumbers1_closure_struct*  @Main_sumNumbers1_closure$def to i8*), i8* bitcast (%Main_sumNumbers2_closure_struct*  @Main_sumNumbers2_closure$def to i8*), i8* bitcast (%Main_zdtrModule4_bytes_struct*  @Main_zdtrModule4_bytes$def to i8*), i8* bitcast (%Main_zdtrModule2_bytes_struct*  @Main_zdtrModule2_bytes$def to i8*), i8* bitcast (%Main_main12_bytes_struct*  @Main_main12_bytes$def to i8*), i8* bitcast (%Main_main8_bytes_struct*  @Main_main8_bytes$def to i8*) ], section "llvm.metadata"
