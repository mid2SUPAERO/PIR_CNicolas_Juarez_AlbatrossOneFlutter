clear all
clc

flutter_speed = []
flutter_modes = []
stiffness_values =['2e4';'3e4';'4e4';'5e4';'6e4';'7e4';'8e4';'9e4';'1e5';'2e5';'3e5';'4e5';'5e5';'6e5';'7e5';'8e5';'9e5';'1e6';'2e6';'3e6';'4e6';'5e6';'6e6';'7e6';'8e6';'9e6';'1e7';'2e7';'3e7';'4e7';'5e7';'6e7';'7e7';'8e7';'9e7';'1e8';'5e8';'1e9';'9e9']

for i = 1:length(stiffness_values)
    
    %Structural element with current stiffnes value is generated
    %for each semi wing
    new1 = sprintf('CELAS   10104   %s     2016    4       2016555 4', stiffness_values(i,:));
    new2 = sprintf('CELAS   20204   %s     2034    4       2034555 4', stiffness_values(i,:));
    
    %Generic line is replaced by the line with the stiffnes current value
    %for each semi wing
    func_replace_string('geo747-16.inc','geo747-16.inc','CELAS   10104   xxx     2016    4       2016555 4',new1);
    func_replace_string('geo747-16.inc','geo747-16.inc','CELAS   20204   xxx     2034    4       2034555 4',new2);
    
    %Flutter snalysis is run
    exampleMain_flutter
    
    %Results are stored
    global flutter_s;
    flutter_speed = [flutter_speed;flutter_s]
    
    global mode_inst;
    flutter_modes = [flutter_modes;mode_inst]
    
    %A generic line is reintroduced in the structural file
    %for each semi wing
    func_replace_string('geo747-16.inc','geo747-16.inc',new1,'CELAS   10104   xxx     2016    4       2016555 4');
    func_replace_string('geo747-16.inc','geo747-16.inc',new2,'CELAS   20204   xxx     2034    4       2034555 4');
end






    