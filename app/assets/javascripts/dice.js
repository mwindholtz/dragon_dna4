var Dice = function(el) {
    this.el = el;
    this.clickRoll();
};

Dice.prototype.clickRoll = function(){
    var self = this;
    $(this.el).find('#btnRoll').click(function(){
        var dice = $('#dice').val();
        self.rollDice(dice);
    });
};

Dice.prototype.rollDice = function(dice){
    var self = this;
    $.ajax({
        url:        '/rolls/new',
        type:       'GET',
        dataType:   'html',
        data:       {dice: dice}
    })
    .error(function(xhr, errorType, exception){
        alert('rollDice Ajax GET Error: ' + exception);
    })
    .success(function(data){
        $(self.el).find('#roll-result').html(data);
    });
};

$(document).ready(function(){
    var dice = new Dice('#dice-div')
});
