// Generated by CoffeeScript 1.4.0
(function() {
  var gfx;

  gfx = {
    init: function() {
      var canvas;
      canvas = document.querySelector("#game");
      this.ctx = canvas != null ? typeof canvas.getContext === "function" ? canvas.getContext("2d") : void 0 : void 0;
      if (!this.ctx) {
        return false;
      }
      this.w = canvas.width;
      this.h = canvas.height;
      return true;
    },
    clear: function() {
      return this.ctx.clearRect(0, 0, this.w, this.h);
    }
  };

  gfx.init();

}).call(this);