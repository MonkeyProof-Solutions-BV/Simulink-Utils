% Copyright (c) 2008-2017 MonkeyProof Solutions B.V.
% Use is subject to the LGPL license.

function sl_customization(cm)

% Register custom menu in the Simulink Editor's menu bar.
cm.addCustomMenuFcn('Simulink:MenuBar', @getCustomSimulinkMenu);

% Register custom menu in the Simulink context menu.
cm.addCustomMenuFcn('Simulink:ContextMenu', @getCustomSimulinkContext);

% Register custom menu in the Stateflow Editor's menu bar.
cm.addCustomMenuFcn('Stateflow:MenuBar', @getCustomStateflowMenu);

% Register custom menu in the Stateflow Editor's context menu.
cm.addCustomMenuFcn('Stateflow:ContextMenu', @getCustomStateflowContext);

% Add custom filters
sl_menu.styleguide.Customizer.setFilters(cm);
sl_menu.blocks.Customizer.setFilters(cm);
sl_menu.stateflow.blocks.Customizer.setFilters(cm);
sl_menu.signals.Customizer.setFilters(cm);

end

%% Simulink Menu Bar
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
customizers             = {sl_menu.blocks.Customizer(), sl_menu.signals.Customizer(), sl_menu.styleguide.Customizer()};

% Generate childrenFcns for schema
schema.childrenFcns     = sl_menu.Customizer.getCustomizeMethods(customizers);

end

%% Simulink Context Menu
function schemaFcns = getCustomSimulinkContext(callbackInfo) %#ok<INUSD>
% Custom context menu function: returns schema functions

schemaFcns = {@customContext};

end

function schema = customContext(callbackInfo) %#ok<INUSD>
% Schema function: defines the custom menu

% Initialize schema
schema                  = sl_container_schema();

% Set menu tag
schema.tag              = 'MonkeyProof:Context';

% Set menu label
schema.label            = 'MonkeyProof Utils';

% Initialize Customizers to add
customizers             = {sl_menu.blocks.Customizer(), sl_menu.signals.Customizer()};

% Generate childrenFcns for schema
schema.childrenFcns     = sl_menu.Customizer.getCustomizeMethods(customizers);

end

%% Stateflow Menu Bar
function schemaFcns = getCustomStateflowMenu(callbackInfo) %#ok<INUSD>
% Custom menu function: returns schema functions

schemaFcns = {@customSFMenu};

end

function schema = customSFMenu(callbackInfo) %#ok<INUSD>
% Schema function: defines the custom menu

% Initialize schema
schema                  = sl_container_schema();

% Set menu tag
schema.tag              = 'MonkeyProof:SFMenu';

% Set menu label
schema.label            = 'MonkeyProof Utils';

% Initialize Customizers to add
customizers             = {sl_menu.stateflow.blocks.Customizer()};

% Generate childrenFcns for schema
schema.childrenFcns     = sl_menu.Customizer.getCustomizeMethods(customizers);

end

%% Stateflow Context Menu
function schemaFcns = getCustomStateflowContext(callbackInfo) %#ok<INUSD>
% Custom menu function: returns schema functions

schemaFcns = {@customSFMenu};

end
