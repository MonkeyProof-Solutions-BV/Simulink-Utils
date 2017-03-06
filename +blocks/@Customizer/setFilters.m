% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

function setFilters(cm)

cm.addCustomFilterFcn('MonkeyProof:MatchSize', @Customizer.checkBlocks);
cm.addCustomFilterFcn('MonkeyProof:ShowHideName', @Customizer.checkBlocks);

end
