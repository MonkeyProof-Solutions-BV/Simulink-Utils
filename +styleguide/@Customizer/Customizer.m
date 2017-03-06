% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

classdef Customizer < Customizer
    
    methods (Static)
        % Customizing Methods
        schema = makeConstantsOrange(callbackInfo)
        schema = resetColors(callbackInfo)
        
        % Implement Abstract
        setFilters(cm)
    end
end
