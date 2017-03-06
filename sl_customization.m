% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

function sl_customization(cm)
% Register custom menu in the Simulink Editor's menu bar.

cm.addCustomMenuFcn('Simulink:MenuBar', @getCustomSimulinkMenu);

end

function schemaFcns = getCustomSimulinkMenu(callbackInfo) %#ok<INUSD>
% Custom menu function: returns schema functions

schemaFcns = {@customMenu};

end

function schema = customMenu(callbackInfo) %#ok<INUSD>
% Schema function: defines the custom menu

% Initialize schema
schema                  = sl_container_schema();

% Set menu tag
schema.tag              = 'MonkeyProof:Menu';

% Set menu label
schema.label            = 'MonkeyProof Utils';

% Initialize Customizers to add
customizers             = {utils.Customizer(), styleguide.Customizer()};

% Generate childrenFcns for schema
schema.childrenFcns     = Customizer.getCustomizeMethods(customizers);

end
