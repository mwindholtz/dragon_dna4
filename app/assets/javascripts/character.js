var Character = function(el){
    this.el = el;
    this.changeCharImage();
};

Character.prototype.changeCharImage = function(){
    var self = this;
    var charSelect = $(this.el).find('#character_klass_option')
    charSelect.on('change', function(event){
        self.hideAllChar()
        var char = self.getChar(charSelect.val());
        $(self.el).find('.' + char).css('display', 'initial')
    });
};

Character.prototype.hideAllChar = function(){
    $(this.el).find('.char').css('display', 'none');
};

Character.prototype.getChar = function(value){
    switch(value){
        case 'C':
            return 'cleric'
        case 'F':
            return 'fighter'
        case 'M':
            return 'magic-user'
        case 'T':
            return 'thief'
    };
};

$(document).ready(function(){
    var character = new Character('.char-form')
});
