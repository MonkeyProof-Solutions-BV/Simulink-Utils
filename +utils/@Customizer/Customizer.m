% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

classdef Customizer < Customizer
    
    methods (Static)
        % Customizing Methods
        
        schema = matchSizeOfBlocks(callbackInfo)
        schema = showHideBlockName(callbackInfo)
    end
end
