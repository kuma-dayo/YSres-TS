// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

;(function (root, factory) {
  if (typeof define === "function" && define.amd) {
    define(["kaitai-struct/KaitaiStream"], factory)
  } else if (typeof module === "object" && module.exports) {
    module.exports = factory(require("kaitai-struct/KaitaiStream"))
  } else {
    root.AuxTypes = factory(root.KaitaiStream)
  }
})(typeof self !== "undefined" ? self : this, function (KaitaiStream) {
  /**
   * Miscellaneous types used in serialization
   * Credit for dynamic_* stuff goes to Raz
   */

  var AuxTypes = (function () {
    function AuxTypes(_io, _parent, _root) {
      this._io = _io
      this._parent = _parent
      this._root = _root || this

      this._read()
    }
    AuxTypes.prototype._read = function () {}

    var LengthPrefixedBitfield = (AuxTypes.LengthPrefixedBitfield = (function () {
      function LengthPrefixedBitfield(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      LengthPrefixedBitfield.prototype._read = function () {
        this.length = new VlqBase128LeU(this._io, this, this._root)
        this.bitfield = []
        for (var i = 0; i < this.length.value; i++) {
          this.bitfield.push(this._io.readU1())
        }
      }
      Object.defineProperty(LengthPrefixedBitfield.prototype, "value", {
        get: function () {
          if (this._m_value !== undefined) return this._m_value
          this._m_value =
            (this.length.value >= 1 ? this.bitfield[0] : 0) +
            (this.length.value >= 2 ? this.bitfield[1] << 8 : 0) +
            (this.length.value >= 3 ? this.bitfield[2] << 16 : 0) +
            (this.length.value >= 4 ? this.bitfield[3] << 24 : 0) +
            (this.length.value >= 5 ? this.bitfield[4] << 32 : 0) +
            (this.length.value >= 6 ? this.bitfield[5] << 40 : 0) +
            (this.length.value >= 7 ? this.bitfield[6] << 48 : 0) +
            (this.length.value >= 8 ? this.bitfield[7] << 56 : 0) +
            (this.length.value >= 9 ? this.bitfield[8] << 64 : 0)
          return this._m_value
        },
      })

      return LengthPrefixedBitfield
    })())

    var DynamicInt = (AuxTypes.DynamicInt = (function () {
      function DynamicInt(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicInt.prototype._read = function () {
        this.isString = this._io.readU1()
        switch (this.isString) {
          case 0:
            this.data = new VlqBase128LeS(this._io, this, this._root)
            break
          case 1:
            this.data = new String(this._io, this, this._root)
            break
        }
      }

      return DynamicInt
    })())

    var DynamicFormula = (AuxTypes.DynamicFormula = (function () {
      function DynamicFormula(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicFormula.prototype._read = function () {
        this.length = new VlqBase128LeS(this._io, this, this._root)
        this.elements = []
        for (var i = 0; i < this.length.value; i++) {
          this.elements.push(new DynamicOperator(this._io, this, this._root))
        }
      }

      return DynamicFormula
    })())

    var DynamicString = (AuxTypes.DynamicString = (function () {
      function DynamicString(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicString.prototype._read = function () {
        this.isDynamic = this._io.readU1()
        this.data = new String(this._io, this, this._root)
      }

      return DynamicString
    })())

    var VlqBase128Le = (AuxTypes.VlqBase128Le = (function () {
      function VlqBase128Le(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      VlqBase128Le.prototype._read = function () {
        this.ksGroups = []
        var i = 0
        do {
          var _ = new Group(this._io, this, this._root)
          this.ksGroups.push(_)
          i++
        } while (_.hasNext)
      }

      var Group = (VlqBase128Le.Group = (function () {
        function Group(_io, _parent, _root) {
          this._io = _io
          this._parent = _parent
          this._root = _root || this

          this._read()
        }
        Group.prototype._read = function () {
          this.b = this._io.readU1()
        }

        /**
         * If true, then we have more bytes to read
         */
        Object.defineProperty(Group.prototype, "hasNext", {
          get: function () {
            if (this._m_hasNext !== undefined) return this._m_hasNext
            this._m_hasNext = (this.b & 128) != 0
            return this._m_hasNext
          },
        })

        /**
         * The 7-bit (base128) numeric value chunk of this group
         */
        Object.defineProperty(Group.prototype, "value", {
          get: function () {
            if (this._m_value !== undefined) return this._m_value
            this._m_value = this.b & 127
            return this._m_value
          },
        })

        return Group
      })())

      /**
       * Resulting unsigned value as normal integer
       */
      Object.defineProperty(VlqBase128Le.prototype, "valueUnsigned", {
        get: function () {
          if (this._m_valueUnsigned !== undefined) return this._m_valueUnsigned
          this._m_valueUnsigned =
            this.ksGroups[0].value +
            (this.len >= 2 ? this.ksGroups[1].value << 7 : 0) +
            (this.len >= 3 ? this.ksGroups[2].value << 14 : 0) +
            (this.len >= 4 ? this.ksGroups[3].value << 21 : 0) +
            (this.len >= 5 ? this.ksGroups[4].value << 28 : 0) +
            (this.len >= 6 ? this.ksGroups[5].value << 35 : 0) +
            (this.len >= 7 ? this.ksGroups[6].value << 42 : 0) +
            (this.len >= 8 ? this.ksGroups[7].value << 49 : 0)
          return this._m_valueUnsigned
        },
      })

      /**
       * Sign bit for Zigzag-encoded integer
       */
      Object.defineProperty(VlqBase128Le.prototype, "signBit", {
        get: function () {
          if (this._m_signBit !== undefined) return this._m_signBit
          this._m_signBit = this.valueUnsigned & 1
          return this._m_signBit
        },
      })

      /**
       * Resulting signed value as Zigzag-encoded integer
       */
      Object.defineProperty(VlqBase128Le.prototype, "valueSigned", {
        get: function () {
          if (this._m_valueSigned !== undefined) return this._m_valueSigned
          this._m_valueSigned = this.valueAbsolute ^ -this.signBit
          return this._m_valueSigned
        },
      })

      /**
       * Absolute value for Zigzag-encoded integer
       */
      Object.defineProperty(VlqBase128Le.prototype, "valueAbsolute", {
        get: function () {
          if (this._m_valueAbsolute !== undefined) return this._m_valueAbsolute
          this._m_valueAbsolute = this.valueUnsigned >>> 1
          return this._m_valueAbsolute
        },
      })
      Object.defineProperty(VlqBase128Le.prototype, "len", {
        get: function () {
          if (this._m_len !== undefined) return this._m_len
          this._m_len = this.ksGroups.length
          return this._m_len
        },
      })

      return VlqBase128Le
    })())

    var VlqBase128LeS = (AuxTypes.VlqBase128LeS = (function () {
      function VlqBase128LeS(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      VlqBase128LeS.prototype._read = function () {
        this.data = new VlqBase128Le(this._io, this, this._root)
      }
      Object.defineProperty(VlqBase128LeS.prototype, "value", {
        get: function () {
          if (this._m_value !== undefined) return this._m_value
          this._m_value = this.data.valueSigned
          return this._m_value
        },
      })

      return VlqBase128LeS
    })())

    var String = (AuxTypes.String = (function () {
      function String(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      String.prototype._read = function () {
        this.length = new VlqBase128LeU(this._io, this, this._root)
        this.data = KaitaiStream.bytesToStr(this._io.readBytes(this.length.value), "UTF-8")
      }

      return String
    })())

    var DynamicOperator = (AuxTypes.DynamicOperator = (function () {
      function DynamicOperator(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicOperator.prototype._read = function () {
        this.isOperator = this._io.readU1()
        switch (this.isOperator) {
          case 0:
            this.data = new BaseDynamicFloat(this._io, this, this._root)
            break
          case 1:
            this.data = new VlqBase128LeS(this._io, this, this._root)
            break
        }
      }

      return DynamicOperator
    })())

    var DynamicArgument = (AuxTypes.DynamicArgument = (function () {
      function DynamicArgument(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicArgument.prototype._read = function () {
        this.typeCode = new VlqBase128LeU(this._io, this, this._root)
        switch (this.typeCode.value) {
          case 10:
            this.data = new String(this._io, this, this._root)
            break
          case 4:
            this.data = this._io.readU2le()
            break
          case 6:
            this.data = this._io.readU4le()
            break
          case 7:
            this.data = this._io.readF4le()
            break
          case 1:
            this.data = this._io.readS1()
            break
          case 3:
            this.data = this._io.readS2le()
            break
          case 5:
            this.data = this._io.readS4le()
            break
          case 8:
            this.data = this._io.readF8le()
            break
          case 9:
            this.data = this._io.readU1()
            break
          case 2:
            this.data = this._io.readU1()
            break
        }
      }

      return DynamicArgument
    })())

    var DynamicFloat = (AuxTypes.DynamicFloat = (function () {
      function DynamicFloat(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      DynamicFloat.prototype._read = function () {
        this.isFormula = this._io.readU1()
        switch (this.isFormula) {
          case 0:
            this.data = new BaseDynamicFloat(this._io, this, this._root)
            break
          case 1:
            this.data = new DynamicFormula(this._io, this, this._root)
            break
        }
      }

      return DynamicFloat
    })())

    /**
     * Type used in misc situations to signal about an error
     */

    var Error = (AuxTypes.Error = (function () {
      function Error(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      Error.prototype._read = function () {
        this.message = this._io.readBytes(60)
        if (
          !(
            KaitaiStream.byteArrayCompare(
              this.message,
              [
                84, 104, 101, 114, 101, 32, 119, 97, 115, 32, 97, 110, 32, 101, 114, 114, 111, 114, 32, 112, 97, 114,
                115, 105, 110, 103, 32, 100, 97, 116, 97, 59, 32, 112, 108, 101, 97, 115, 101, 32, 99, 104, 101, 99,
                107, 32, 75, 83, 89, 32, 100, 101, 102, 105, 110, 105, 116, 105, 111, 110,
              ]
            ) == 0
          )
        ) {
          throw new KaitaiStream.ValidationNotEqualError(
            [
              84, 104, 101, 114, 101, 32, 119, 97, 115, 32, 97, 110, 32, 101, 114, 114, 111, 114, 32, 112, 97, 114, 115,
              105, 110, 103, 32, 100, 97, 116, 97, 59, 32, 112, 108, 101, 97, 115, 101, 32, 99, 104, 101, 99, 107, 32,
              75, 83, 89, 32, 100, 101, 102, 105, 110, 105, 116, 105, 111, 110,
            ],
            this.message,
            this._io,
            "/types/error/seq/0"
          )
        }
      }

      return Error
    })())

    var BaseDynamicFloat = (AuxTypes.BaseDynamicFloat = (function () {
      function BaseDynamicFloat(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      BaseDynamicFloat.prototype._read = function () {
        this.isString = this._io.readU1()
        switch (this.isString) {
          case 0:
            this.data = this._io.readF4le()
            break
          case 1:
            this.data = new String(this._io, this, this._root)
            break
        }
      }

      return BaseDynamicFloat
    })())

    var VlqBase128LeU = (AuxTypes.VlqBase128LeU = (function () {
      function VlqBase128LeU(_io, _parent, _root) {
        this._io = _io
        this._parent = _parent
        this._root = _root || this

        this._read()
      }
      VlqBase128LeU.prototype._read = function () {
        this.data = new VlqBase128Le(this._io, this, this._root)
      }
      Object.defineProperty(VlqBase128LeU.prototype, "value", {
        get: function () {
          if (this._m_value !== undefined) return this._m_value
          this._m_value = this.data.valueUnsigned
          return this._m_value
        },
      })

      return VlqBase128LeU
    })())

    return AuxTypes
  })()
  return AuxTypes
})
