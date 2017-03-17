% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

function setFilters(cm)

cm.addCustomFilterFcn('MonkeyProof:MatchSize', @Customizer.checkBlocks);
cm.addCustomFilterFcn('MonkeyProof:ShowHideName', @Customizer.checkBlocks);
cm.addCustomFilterFcn('MonkeyProof:CreateBusObject', @checkCreateBusObject);
cm.addCustomFilterFcn('MonkeyProof:InheritPortNames', @Customizer.checkOneSubsystem);

end

function state = checkCreateBusObject(callbackInfo)
% Custom check for MonkeyProof:CreateBusObject menu item

% Check if just one block is selected.
state = Customizer.checkOneBlock(callbackInfo);

if strcmp(state, 'Enabled')
    % Continue checking.
    partH   = SLStudio.Utils.partitionSelectionHandles(callbackInfo);
    type    = get(partH.blocks, 'BlockType');
    
    switch type
        case 'BusCreator'
            % Implemented for BusCreator blocks.
            state = 'Enabled';
            
        otherwise
            % Not implemented for other block types.
            state = 'Disabled';
    end
end

end
