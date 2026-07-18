/**
 * @param {integer} init
 * @return { increment: Function, decrement: Function, reset: Function }
 */
var createCounter = function(init) {
    let i = init;
    return{
        increment: function(){
            return ++i;
        },
        reset: function(){
            i = init;
            return i;
        },
        decrement: function(){
            return --i;
        }
    };

        
    }

/**
 * const counter = createCounter(5)
 * counter.increment(); // 6
 * counter.reset(); // 5
 * counter.decrement(); // 4
 */