# -*- coding: utf-8 -*-

cimport numpy as np
from libc.stdint cimport int32_t, uint32_t

from .dictionary cimport Dictionary, Entity

cdef class LinkGraph:
    cdef Dictionary _dictionary
    cdef const int32_t [:] _indices
    cdef const int32_t [:] _indptr
    cdef dict _build_params
    cdef int32_t _offset

    cpdef list neighbors(self, Entity)
    cdef const int32_t [:] neighbor_indices(self, int32_t) nogil
