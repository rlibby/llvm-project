; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc -mtriple=thumbv8.1m.main-arm-none-eabi -mattr=+mve -verify-machineinstrs %s -o - | FileCheck %s

define arm_aapcs_vfpcc <8 x i16> @sext_v8i8_v8i16(<8 x i8> %src) {
; CHECK-LABEL: sext_v8i8_v8i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmovlb.s8 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sext <8 x i8> %src to <8 x i16>
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @sext_v4i16_v4i32(<4 x i16> %src) {
; CHECK-LABEL: sext_v4i16_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmovlb.s16 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sext <4 x i16> %src to <4 x i32>
  ret <4 x i32> %0
}

define arm_aapcs_vfpcc <4 x i32> @sext_v4i8_v4i32(<4 x i8> %src) {
; CHECK-LABEL: sext_v4i8_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmovlb.s8 q0, q0
; CHECK-NEXT:    vmovlb.s16 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = sext <4 x i8> %src to <4 x i32>
  ret <4 x i32> %0
}


define arm_aapcs_vfpcc <8 x i16> @zext_v8i8_v8i16(<8 x i8> %src) {
; CHECK-LABEL: zext_v8i8_v8i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmovlb.u8 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext <8 x i8> %src to <8 x i16>
  ret <8 x i16> %0
}

define arm_aapcs_vfpcc <4 x i32> @zext_v4i16_v4i32(<4 x i16> %src) {
; CHECK-LABEL: zext_v4i16_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmovlb.u16 q0, q0
; CHECK-NEXT:    bx lr
entry:
  %0 = zext <4 x i16> %src to <4 x i32>
  ret <4 x i32> %0
}

define arm_aapcs_vfpcc <4 x i32> @zext_v4i8_v4i32(<4 x i8> %src) {
; CHECK-LABEL: zext_v4i8_v4i32:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    vmov.i32 q1, #0xff
; CHECK-NEXT:    vand q0, q0, q1
; CHECK-NEXT:    bx lr
entry:
  %0 = zext <4 x i8> %src to <4 x i32>
  ret <4 x i32> %0
}


define arm_aapcs_vfpcc <8 x i8> @trunc_v8i16_v8i8(<8 x i16> %src) {
; CHECK-LABEL: trunc_v8i16_v8i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    bx lr
entry:
  %0 = trunc <8 x i16> %src to <8 x i8>
  ret <8 x i8> %0
}

define arm_aapcs_vfpcc <4 x i16> @trunc_v4i32_v4i16(<4 x i32> %src) {
; CHECK-LABEL: trunc_v4i32_v4i16:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    bx lr
entry:
  %0 = trunc <4 x i32> %src to <4 x i16>
  ret <4 x i16> %0
}

define arm_aapcs_vfpcc <4 x i8> @trunc_v4i32_v4i8(<4 x i32> %src) {
; CHECK-LABEL: trunc_v4i32_v4i8:
; CHECK:       @ %bb.0: @ %entry
; CHECK-NEXT:    bx lr
entry:
  %0 = trunc <4 x i32> %src to <4 x i8>
  ret <4 x i8> %0
}