classdef EarlyStopping < handle
    properties
        patience 
        counter = 0 
        best_score = NaN
        early_stop = false
        current = Inf
    end
    
    methods
        function earlyStopping = EarlyStopping(patience)
            earlyStopping.patience=patience;
        end
        
        function obj = stop(earlyStopping,loss)
            obj=earlyStopping;
            score=loss*-1;
            if isnan(obj.best_score)
                obj.best_score=score;
            elseif score < obj.best_score
                obj.counter=obj.counter+1;
                if obj.counter>=obj.patience
                    obj.early_stop=true;
                end
            else
                obj.best_score=score;
                obj.counter=0;
            end
        end  
    end
end

