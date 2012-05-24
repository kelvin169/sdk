// Copyright (c) 2012, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

#include "vm/globals.h"  // Needed here to get TARGET_ARCH_X64.
#if defined(TARGET_ARCH_X64)

#include "vm/intrinsifier.h"

#include "vm/assembler.h"
#include "vm/instructions.h"

namespace dart {

DECLARE_FLAG(bool, enable_type_checks);

// When entering intrinsics code:
// RBX: IC Data
// R10: Arguments descriptor
// TOS: Return address

#define __ assembler->

bool Intrinsifier::ObjectArray_Allocate(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Array_getLength(Assembler* assembler) {
  __ movq(RAX, Address(RSP, + 1 * kWordSize));
  __ movq(RAX, FieldAddress(RAX, Array::length_offset()));
  __ ret();
  return true;
}


bool Intrinsifier::ImmutableArray_getLength(Assembler* assembler) {
  return Array_getLength(assembler);
}


bool Intrinsifier::Array_getIndexed(Assembler* assembler) {
  return false;
}


bool Intrinsifier::ImmutableArray_getIndexed(Assembler* assembler) {
  return Array_getIndexed(assembler);
}


bool Intrinsifier::Array_setIndexed(Assembler* assembler) {
  return false;
}


bool Intrinsifier::GArray_Allocate(Assembler* assembler) {
  return false;
}


// Get length of growable object array.
// On stack: growable array (+1), return-address (+0).
bool Intrinsifier::GrowableArray_getLength(Assembler* assembler) {
  __ movq(RAX, Address(RSP, + 1 * kWordSize));
  __ movq(RAX, FieldAddress(RAX, GrowableObjectArray::length_offset()));
  __ ret();
  return true;
}


bool Intrinsifier::GrowableArray_getCapacity(Assembler* assembler) {
  __ movq(RAX, Address(RSP, + 1 * kWordSize));
  __ movq(RAX, FieldAddress(RAX, GrowableObjectArray::data_offset()));
  __ movq(RAX, FieldAddress(RAX, Array::length_offset()));
  __ ret();
  return true;
}


bool Intrinsifier::GrowableArray_getIndexed(Assembler* assembler) {
  return false;
}


bool Intrinsifier::GrowableArray_setIndexed(Assembler* assembler) {
  return false;
}


bool Intrinsifier::GrowableArray_setLength(Assembler* assembler) {
  return false;
}


// Set data of growable object array.
// On stack: growable array (+2), data (+1), return-address (+0).
bool Intrinsifier::GrowableArray_setData(Assembler* assembler) {
  if (FLAG_enable_type_checks) {
    return false;
  }
  __ movq(RAX, Address(RSP, + 2 * kWordSize));
  __ movq(RBX, Address(RSP, + 1 * kWordSize));
  __ movq(FieldAddress(RAX, GrowableObjectArray::data_offset()), RBX);
  __ ret();
  return true;
}


bool Intrinsifier::Integer_addFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_add(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_subFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_sub(Assembler* assembler) {
  return false;
}



bool Intrinsifier::Integer_mulFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_mul(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_modulo(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_truncDivide(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_negate(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitAndFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitAnd(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitOrFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitOr(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitXorFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_bitXor(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_shl(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_lessThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_greaterThanFromInt(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_greaterThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_lessEqualThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_greaterEqualThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_equalToInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_equal(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Integer_sar(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Smi_bitNegate(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_greaterThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_greaterEqualThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_lessThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_equal(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_lessEqualThan(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_toDouble(Assembler* assembler) {
  __ movq(RAX, Address(RSP, + 1 * kWordSize));
  __ ret();
  // Generate enough code to satisfy patchability constraint.
  intptr_t offset = __ CodeSize();
  __ nop(JumpPattern::InstructionLength() - offset);
  return true;
}

bool Intrinsifier::Double_add(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_mul(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_sub(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_div(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_mulFromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_fromInteger(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Double_isNaN(Assembler* assembler) {
  const Bool& bool_true = Bool::ZoneHandle(Bool::True());
  const Bool& bool_false = Bool::ZoneHandle(Bool::False());
  Label is_true;
  __ movq(RAX, Address(RSP, +1 * kWordSize));
  __ movsd(XMM0, FieldAddress(RAX, Double::value_offset()));
  __ comisd(XMM0, XMM0);
  __ j(PARITY_EVEN, &is_true, Assembler::kNearJump);  // NaN -> true;
  __ LoadObject(RAX, bool_false);
  __ ret();
  __ Bind(&is_true);
  __ LoadObject(RAX, bool_true);
  __ ret();
  return true;  // Method is complete, no slow case.
}


bool Intrinsifier::Double_isNegative(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Math_sqrt(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Math_sin(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Math_cos(Assembler* assembler) {
  return false;
}


bool Intrinsifier::Object_equal(Assembler* assembler) {
  return false;
}


bool Intrinsifier::FixedSizeArrayIterator_next(Assembler* assembler) {
  return false;
}


bool Intrinsifier::FixedSizeArrayIterator_hasNext(Assembler* assembler) {
  return false;
}


bool Intrinsifier::String_getLength(Assembler* assembler) {
  return false;
}


bool Intrinsifier::String_charCodeAt(Assembler* assembler) {
  return false;
}


bool Intrinsifier::String_hashCode(Assembler* assembler) {
  return false;
}


bool Intrinsifier::String_isEmpty(Assembler* assembler) {
  return false;
}

#undef __

}  // namespace dart

#endif  // defined TARGET_ARCH_X64
