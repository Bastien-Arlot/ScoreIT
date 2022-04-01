window.addEventListener("load", function(){

  let img1 = document.getElementById("img1");
  let img2 = document.getElementById("img2");
  let img3 = document.getElementById("img3");
  let img4 = document.getElementById("img4");
  let img5 = document.getElementById("img5");
  let body = document.body;

  img1.addEventListener("click", function(){
    img1.classList.add("pulse");
    img2.addEventListener("click", function(){
      img2.classList.add("pulse");
      img3.addEventListener("click", function(){
        img3.classList.add("pulse");
        img4.addEventListener("click", function(){
          img4.classList.add("pulse");
          img5.addEventListener("click", function(){
            img5.classList.add("pulse");
            godmod();
          });
        });
      });
    });
  });

  function godmod(){
    body.innerHTML = "";
    body.innerHTML = "<h2 class=\"message\" id=\"open\">Welcome to Paradise<br><br>You Want God Mod ?<br><br><span style=\"font-size: 12px\">Click here</span></h2> <h2 class=\"secret message\" id=\"close\">Waiting...</h2> <a id=\"easterhome\"href=\"/home/team\">a</a>";

    let waiting = document.querySelector("h2.secret");

    function count(){
      setTimeout(function(){
        waiting.textContent = "Waiting.";
      }, 1000);

      setTimeout(function(){
        waiting.textContent = "Waiting..";
      }, 2000);

      setTimeout(function(){
        waiting.textContent = "Waiting...";
      }, 3000);

      setTimeout(function(){
        waiting.textContent = "God Mod is not for kids ! sorry";
      }, 4000);

      setTimeout(function(){
        waiting.innerHTML = "";
        waiting.innerHTML = "<img src=\"https://www.lizakeen.com/wp-content/uploads/2018/03/troll.png\" class=\"object\" width=\"240\" height=\"200\">";
      }, 7000);

      setTimeout(function(){
        let escape = document.querySelector("a#easterhome");
        escape.click();
      }, 8500);

    };

    function PixelOverlay() {
      this.width = window.innerWidth;
      this.height = window.innerHeight;
      this.rectWidth = 25;
      this.rectHeight = 25;
      this.speed = 25;
      this.color = '#000000';
    }

    PixelOverlay.prototype.init = function() {
      this.canvas = document.createElement("canvas");
      this.ctx = this.canvas.getContext('2d');

      this.canvas.id = 'pixel-overlay';
      this.canvas.style.zIndex = 8;
      this.canvas.style.top = 0;
      this.canvas.style.left = 0;
      this.canvas.style.position = "fixed";

      document.body.appendChild(this.canvas);

      this.ctx.canvas.width  = this.width;
      this.ctx.canvas.height = this.height;
    }

    PixelOverlay.prototype.drawRect = function(x, y, fill) {
      this.ctx.fillStyle = fill;
      if (fill == 'clear') {
        this.ctx.clearRect(x,y, this.rectWidth, this.rectHeight)
      } else {
        this.ctx.fillRect(x, y, this.rectWidth, this.rectHeight)
      }
    }

    PixelOverlay.prototype.distributeRects = function(spawnX, spawnY, radius, elemCount, fill) {
      var width = this.width,
      height = this.height,
      angle = 0,
      step = (2*Math.PI) / elemCount;

      for(var i = 0; i < elemCount; i++) {
        var x = spawnX + radius * Math.cos(angle) - this.rectWidth/2;
        var y = spawnY + radius * Math.sin(angle) - this.rectHeight/2;
        this.drawRect(x, y, fill);
        angle += step;
      }
    }

    PixelOverlay.prototype.spawnCircle = function(x, y, fill, finishColor, callback) {
      var count = 0;
      var tempColor;
      var offset = 0.5;
      var self = this;

      function draw(timestamp, finishColor, callback) {
        if (fill == 'random') {
          tempColor = randomColor({luminosity: 'bright'})
        } else {
          tempColor = fill;
        }

        self.distributeRects(x, y, 25 * count * offset , 4 * count, tempColor)

        if (self.checkDone(finishColor)) {
          if (callback && typeof(callback) == "function") callback()
        } else {
          count++;
          requestAnimationFrame(function(timestamp) {
            draw(timestamp, finishColor, callback)
          });
        }
      }

      requestAnimationFrame(function(timestamp) {
        draw(timestamp, finishColor, callback)
      })
    }

    PixelOverlay.prototype.checkDone = function(finishColor) {
      var topLeftSensor = this.ctx.getImageData(0, 0, 1, 1).data.toString();
      var topRightSensor = this.ctx.getImageData(this.width - 1, 0, 1, 1).data.toString();
      var bottomRightSensor = this.ctx.getImageData(this.width - 1, this.height - 1, 1, 1).data.toString();
      var bottomLeftSensor = this.ctx.getImageData(0, this.height - 1, 1, 1).data.toString();
      var finalColor = finishColor.toString();

      if (
        topLeftSensor === finalColor &&
        topRightSensor === finalColor &&
        bottomRightSensor === finalColor &&
        bottomLeftSensor === finalColor
      ) {
        return true
      }
    }

    PixelOverlay.prototype.getCursorPosition = function(canvas, event) {
      var rect = canvas.getBoundingClientRect();
      var x = event.clientX - rect.left;
      var y = event.clientY - rect.top;
      return {'x': x, 'y': y};
    }

    PixelOverlay.prototype.destroy = function() {
      var canvas = document.getElementById('pixel-overlay');
      canvas.parentNode.removeChild(canvas);
    }

    PixelOverlay.prototype.open = function(e, callback) {
      var cords = this.getCursorPosition(this.canvas, e);
      var self = this;

      this.spawnCircle(cords.x, cords.y, 'random', [0,0,0,255])

      setTimeout(function() {
        self.spawnCircle(cords.x, cords.y, self.color, [0,0,0,255], callback)
      }, 100)
    }

    PixelOverlay.prototype.close = function(e, callback) {
      var cords = this.getCursorPosition(this.canvas, e);
      var self = this;

      this.spawnCircle(cords.x, cords.y, 'random', [0,0,0,0])

      setTimeout(function() {
        self.spawnCircle(cords.x, cords.y, 'clear', [0,0,0,0], callback)
      }, 100)
    }


    var overlay = new PixelOverlay();

    document.getElementById("open").addEventListener("click", function(e) {
      e.preventDefault()
      overlay.init();
      overlay.open(e, function() {
        document.getElementById("close").className = 'message'
        document.getElementById("open").className = 'secret message'
        count()
      })
    }, {once : true});
  };
});
