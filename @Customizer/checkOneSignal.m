% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

function state = checkOneSignal(callbackInfo)
% Check if 1 signal is selected

partH = SLStudio.Utils.partitionSelectionHandles(callbackInfo);

if numel(partH.segments) ~= 1
    state = 'Disabled';
else
    state = 'Enabled';
end

end