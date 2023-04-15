// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

(function (root, factory) {
  if (typeof define === 'function' && define.amd) {
    define(['kaitai-struct/KaitaiStream'], factory);
  } else if (typeof module === 'object' && module.exports) {
    module.exports = factory(require('kaitai-struct/KaitaiStream'));
  } else {
    root.EnumTalentFilterCond = factory(root.KaitaiStream);
  }
}(typeof self !== 'undefined' ? self : this, function (KaitaiStream) {
var EnumTalentFilterCond = (function() {
  EnumTalentFilterCond.TalentFilterCond = Object.freeze({
    TALENT_FILTER_NONE: 0,
    TALENT_FILTER_FIRE_AVATAR: 1,
    TALENT_FILTER_ELEC_AVATAR: 2,
    TALENT_FILTER_WATER_AVATAR: 3,
    TALENT_FILTER_GRASS_AVATAR: 4,
    TALENT_FILTER_WIND_AVATAR: 5,
    TALENT_FILTER_ICE_AVATAR: 6,
    TALENT_FILTER_ROCK_AVATAR: 7,

    0: "TALENT_FILTER_NONE",
    1: "TALENT_FILTER_FIRE_AVATAR",
    2: "TALENT_FILTER_ELEC_AVATAR",
    3: "TALENT_FILTER_WATER_AVATAR",
    4: "TALENT_FILTER_GRASS_AVATAR",
    5: "TALENT_FILTER_WIND_AVATAR",
    6: "TALENT_FILTER_ICE_AVATAR",
    7: "TALENT_FILTER_ROCK_AVATAR",
  });

  function EnumTalentFilterCond(_io, _parent, _root) {
    this._io = _io;
    this._parent = _parent;
    this._root = _root || this;

    this._read();
  }
  EnumTalentFilterCond.prototype._read = function() {
    this.data = new AuxTypes.VlqBase128LeS(this._io, this, this._root);
  }
  Object.defineProperty(EnumTalentFilterCond.prototype, 'value', {
    get: function() {
      if (this._m_value !== undefined)
        return this._m_value;
      this._m_value = this.data.value;
      return this._m_value;
    }
  });

  return EnumTalentFilterCond;
})();
return EnumTalentFilterCond;
}));
