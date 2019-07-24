function varargout = TSAA(varargin)
% TSAA MATLAB code for TSAA.fig
%      TSAA, by itself, creates a new TSAA or raises the existing
%      singleton*.
%
%      H = TSAA returns the handle to a new TSAA or the handle to
%      the existing singleton*.
%
%      TSAA('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TSAA.M with the given input arguments.
%
%      TSAA('Property','Value',...) creates a new TSAA or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before TSAA_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to TSAA_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help TSAA

% Last Modified by GUIDE v2.5 20-Jul-2019 17:28:29

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @TSAA_OpeningFcn, ...
                   'gui_OutputFcn',  @TSAA_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before TSAA is made visible.
function TSAA_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to TSAA (see VARARGIN)

% Choose default command line output for TSAA
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes TSAA wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = TSAA_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in RB_ROX.
function RB_ROX_Callback(hObject, eventdata, handles)
 set(handles.RB_VIC,'Value',0)
 set(handles.RB_Filtro1,'Value',0)
 set(handles.RB_Filtro2,'Value',0)
 set(handles.RB_Filtro3,'Value',0)


% --- Executes on button press in RB_VIC.
function RB_VIC_Callback(hObject, eventdata, handles)
 set(handles.RB_ROX,'Value',0)
 set(handles.RB_Filtro1,'Value',0)
 set(handles.RB_Filtro2,'Value',0)
 set(handles.RB_Filtro3,'Value',0)


% --- Executes on button press in RB_Filtro1.
function RB_Filtro1_Callback(hObject, eventdata, handles)
 set(handles.RB_ROX,'Value',0)
 set(handles.RB_VIC,'Value',0)
 set(handles.RB_Filtro2,'Value',0)
 set(handles.RB_Filtro3,'Value',0)


% --- Executes on button press in RB_Filtro2.
function RB_Filtro2_Callback(hObject, eventdata, handles)
 set(handles.RB_ROX,'Value',0)
 set(handles.RB_VIC,'Value',0)
 set(handles.RB_Filtro1,'Value',0)
 set(handles.RB_Filtro3,'Value',0)


% --- Executes on button press in RB_Filtro3.
function RB_Filtro3_Callback(hObject, eventdata, handles)
 set(handles.RB_ROX,'Value',0)
 set(handles.RB_VIC,'Value',0)
 set(handles.RB_Filtro1,'Value',0)
 set(handles.RB_Filtro2,'Value',0)



% --- Executes on button press in CB_A1.
function CB_A1_Callback(hObject, eventdata, handles)
try
if handles.CB_A1.Value == 1
     global A1F1 A1F2 A1F3 A1RA A1VA
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(1,:)');
end
try
    handles.AX_Preview;
    hold on
   A1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   A1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    A1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  A1RA = plot(tem,AR);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
   A1VA = plot(tem,AV);
  
   handles.AX_Preview.XData
    hold off
end
else
   global A1F1 A1F2 A1F3 A1RA A1VA
    delete(A1F1)
    delete(A1F2)
    delete(A1F3)
    delete(A1RA)
    delete(A1VA)
end
end

% --- Executes on button press in CB_A2.
function CB_A2_Callback(hObject, eventdata, handles)
try
if handles.CB_A2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global A2F1
   A2F1 = plot(tem,AF1,'DisplayName','A2F1');
   
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A2F2
   A2F2 = plot(tem,AF2,'DisplayName','A2F2');
      hold off
 end
try
    handles.AX_Preview;
    hold on
    global A2F3
    A2F3 = plot(tem,AF3);
      hold off
end
try
    handles.AX_Preview;
    hold on
  global A2RA 
  A2RA = plot(tem,AR);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A2VA
   A2VA = plot(tem,AV);
 
    hold off
end
else
   global A2F1; 
   global A2F2;
   global A2F3;
   global A2RA;
   global A2VA;
   
    delete(A2F1)
    delete(A2F2)
    delete(A2F3)
    delete(A2RA)
    delete(A2VA)
end
end


% --- Executes on button press in CB_A3.
function CB_A3_Callback(hObject, eventdata, handles)
try
if handles.CB_A3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global A3F1
   A3F1 = plot(tem,AF1);
   
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A3F2
   A3F2 = plot(tem,AF2);
   
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A3F3
    A3F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A3RA 
  A3RA = plot(tem,AR);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A3VA
   A3VA = plot(tem,AV);

    hold off
end
else
   global A3F1; 
   global A3F2;
   global A3F3;
   global A3RA;
   global A3VA;
   
    delete(A3F1)
    delete(A3F2)
    delete(A3F3)
    delete(A3RA)
    delete(A3VA)
end
end

% --- Executes on button press in CB_A4.
function CB_A4_Callback(hObject, eventdata, handles)
    try
if handles.CB_A4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global A4F1
   A4F1 = plot(tem,AF1);
  
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A4F2
   A4F2 = plot(tem,AF2);
  
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A4F3
    A4F3 = plot(tem,AF3);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A4RA 
  A4RA = plot(tem,AR);

    hold off
end
try
    handles.AX_Preview;
    hold on
   global A4VA
   A4VA = plot(tem,AV);

    hold off
end
else
   global A4F1; 
   global A4F2;
   global A4F3;
   global A4RA;
   global A4VA;
   
    delete(A4F1)
    delete(A4F2)
    delete(A4F3)
    delete(A4RA)
    delete(A4VA)
end
end
% --- Executes on button press in CB_A5.
function CB_A5_Callback(hObject, eventdata, handles)
try
if handles.CB_A5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global A5F1
   A5F1 = plot(tem,AF1);
  
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A5F2
   A5F2 = plot(tem,AF2);
  
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A5F3
    A5F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A5RA 
  A5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A5VA
   A5VA = plot(tem,AV);

    hold off
end
else
   global A5F1; 
   global A5F2;
   global A5F3;
   global A5RA;
   global A5VA;
   
    delete(A5F1)
    delete(A5F2)
    delete(A5F3)
    delete(A5RA)
    delete(A5VA)
end
end
% --- Executes on button press in CB_A6.
function CB_A6_Callback(hObject, eventdata, handles)
try
if handles.CB_A6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global A6F1
   A6F1 = plot(tem,AF1);

    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A6F2
   A6F2 = plot(tem,AF2);
   
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A6F3
    A6F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A6RA 
  A6RA = plot(tem,AR);

    hold off
end
try
    handles.AX_Preview;
    hold on
   global A6VA
   A6VA = plot(tem,AV);
  
    hold off
end
else
   global A6F1; 
   global A6F2;
   global A6F3;
   global A6RA;
   global A6VA;
   
    delete(A6F1)
    delete(A6F2)
    delete(A6F3)
    delete(A6RA)
    delete(A6VA)
end
end
% --- Executes on button press in CB_A7.
function CB_A7_Callback(hObject, eventdata, handles)
try
if handles.CB_A7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global A7F1
   A7F1 = plot(tem,AF1);
   
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A7F2
   A7F2 = plot(tem,AF2);

    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A7F3
    A7F3 = plot(tem,AF3);
  
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A7RA 
  A7RA = plot(tem,AR);
  
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A7VA
    A7VA = plot(tem,AV);
   
    hold off
end
else
   global A7F1; 
   global A7F2;
   global A7F3;
   global A7RA;
   global A7VA;
   
    delete(A7F1)
    delete(A7F2)
    delete(A7F3)
    delete(A7RA)
    delete(A7VA)
end
end

% --- Executes on button press in CB_A8.
function CB_A8_Callback(hObject, eventdata, handles)
try
if handles.CB_A8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global A8F1
   A8F1 = plot(tem,AF1);
 
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A8F2
   A8F2 = plot(tem,AF2);
    
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A8F3
    A8F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A8RA 
  A8RA = plot(tem,AR);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A8VA
   A8VA = plot(tem,AV);
 
    hold off
end
else
   global A8F1; 
   global A8F2;
   global A8F3;
   global A8RA;
   global A8VA;
   
    delete(A8F1)
    delete(A8F2)
    delete(A8F3)
    delete(A8RA)
    delete(A8VA)
end
end

% --- Executes on button press in CB_A9.
function CB_A9_Callback(hObject, eventdata, handles)
try
if handles.CB_A9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global A9F1
   A9F1 = plot(tem,AF1);
 
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A9F2
   A9F2 = plot(tem,AF2);
    
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A9F3
    A9F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A9RA 
  A9RA = plot(tem,AR);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A9VA
   A9VA = plot(tem,AV);
 
    hold off
end
else
   global A9F1; 
   global A9F2;
   global A9F3;
   global A9RA;
   global A9VA;
   
    delete(A9F1)
    delete(A9F2)
    delete(A9F3)
    delete(A9RA)
    delete(A9VA)
end
end


% --- Executes on button press in CB_A10.
function CB_A10_Callback(hObject, eventdata, handles)
try
if handles.CB_A10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global A10F1
   A10F1 = plot(tem,AF1);
 
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A10F2
   A10F2 = plot(tem,AF2);
    
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A10F3
    A10F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A10RA 
  A10RA = plot(tem,AR);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A10VA
   A10VA = plot(tem,AV);
 
    hold off
end
else
   global A10F1; 
   global A10F2;
   global A10F3;
   global A10RA;
   global A10VA;
   
    delete(A10F1)
    delete(A10F2)
    delete(A10F3)
    delete(A10RA)
    delete(A10VA)
end
end

% --- Executes on button press in CB_A11.
function CB_A11_Callback(hObject, eventdata, handles)
try
if handles.CB_A11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global A11F1
   A11F1 = plot(tem,AF1);
 
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A11F2
   A11F2 = plot(tem,AF2);
    
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A11F3
    A11F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A11RA 
  A11RA = plot(tem,AR);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A11VA
   A11VA = plot(tem,AV);
 
    hold off
end
else
   global A11F1; 
   global A11F2;
   global A11F3;
   global A11RA;
   global A11VA;
   
    delete(A11F1)
    delete(A11F2)
    delete(A11F3)
    delete(A11RA)
    delete(A11VA)
end
end



% --- Executes on button press in CB_A12.
function CB_A12_Callback(hObject, eventdata, handles)
try
if handles.CB_A12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','A(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','A(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','A(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RA(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VA(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global A12F1
   A12F1 = plot(tem,AF1);
 
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global A12F2
   A12F2 = plot(tem,AF2);
    
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global A12F3
    A12F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global A12RA 
  A12RA = plot(tem,AR);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
   global A12VA
   A12VA = plot(tem,AV);
 
    hold off
end
else
   global A12F1; 
   global A12F2;
   global A12F3;
   global A12RA;
   global A12VA;
   
    delete(A12F1)
    delete(A12F2)
    delete(A12F3)
    delete(A12RA)
    delete(A12VA)
end
end

% --- Executes on button press in CB_B1.
function CB_B1_Callback(hObject, eventdata, handles)
try
if handles.CB_B1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global B1F1
   B1F1 = plot(tem,AF1);
    
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B1F2
   B1F2 = plot(tem,AF2);
  
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B1F3
    B1F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B1RA 
  B1RA = plot(tem,AR);

    hold off
end
try
    handles.AX_Preview;
    hold on
   global B1VA
   B1VA = plot(tem,AV);

    hold off
end
else
   global B1F1; 
   global B1F2;
   global B1F3;
   global B1RA;
   global B1VA;
   
    delete(B1F1)
    delete(B1F2)
    delete(B1F3)
    delete(B1RA)
    delete(B1VA)
end
end

% --- Executes on button press in CB_B2.
function CB_B2_Callback(hObject, eventdata, handles)
try
if handles.CB_B2.Value == 1
tem = evalin('base','tem');

if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global B2F1
   B2F1 = plot(tem,AF1);
  
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B2F2
   B2F2 = plot(tem,AF2);
  
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B2F3
    B2F3 = plot(tem,AF3);
   
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B2RA 
  B2RA = plot(tem,AR);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B2VA
   B2VA = plot(tem,AV);
   
    hold off
end
else
   global B2F1; 
   global B2F2;
   global B2F3;
   global B2RA;
   global B2VA;
   
    delete(B2F1)
    delete(B2F2)
    delete(B2F3)
    delete(B2RA)
    delete(B2VA)
end
end

% --- Executes on button press in CB_B3.
function CB_B3_Callback(hObject, eventdata, handles)
try
if handles.CB_B3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global B3F1
   B3F1 = plot(tem,AF1);
   
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B3F2
   B3F2 = plot(tem,AF2);
  
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B3F3
    B3F3 = plot(tem,AF3);
    
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B3RA 
  B3RA = plot(tem,AR);

    hold off
end
try
    handles.AX_Preview;
    hold on
   global B3VA
   B3VA = plot(tem,AV);
  
    hold off
end
else
   global B3F1; 
   global B3F2;
   global B3F3;
   global B3RA;
   global B3VA;
   
    delete(B3F1)
    delete(B3F2)
    delete(B3F3)
    delete(B3RA)
    delete(B3VA)
end
end

% --- Executes on button press in CB_B4.
function CB_B4_Callback(hObject, eventdata, handles)
try
if handles.CB_B4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global B4F1
   B4F1 = plot(tem,AF1);
   
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B4F2
   B4F2 = plot(tem,AF2);
   
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B4F3
    B4F3 = plot(tem,AF3);
      
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B4RA 
  B4RA = plot(tem,AR);
    
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B4VA
   B4VA = plot(tem,AV);
  
    hold off
end
else
   global B4F1; 
   global B4F2;
   global B4F3;
   global B4RA;
   global B4VA;
   
    delete(B4F1)
    delete(B4F2)
    delete(B4F3)
    delete(B4RA)
    delete(B4VA)
end
end

% --- Executes on button press in CB_B5.
function CB_B5_Callback(hObject, eventdata, handles)
try
if handles.CB_B5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global B5F1
   B5F1 = plot(tem,AF1);
     
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B5F2
   B5F2 = plot(tem,AF2);
   
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B5F3
    B5F3 = plot(tem,AF3);
    
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B5RA 
  B5RA = plot(tem,AR);
 
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B5VA
   B5VA = plot(tem,AV);
  
    hold off
end
else
   global B5F1; 
   global B5F2;
   global B5F3;
   global B5RA;
   global B5VA;
   
    delete(B5F1)
    delete(B5F2)
    delete(B5F3)
    delete(B5RA)
    delete(B5VA)
end
end

% --- Executes on button press in CB_B6.
function CB_B6_Callback(hObject, eventdata, handles)
try
if handles.CB_B6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global B6F1
   B6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B6F2
   B6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B6F3
    B6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B6RA 
  B6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B6VA
   B6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B6F1; 
   global B6F2;
   global B6F3;
   global B6RA;
   global B6VA;
   
    delete(B6F1)
    delete(B6F2)
    delete(B6F3)
    delete(B6RA)
    delete(B6VA)
end
end

% --- Executes on button press in CB_B7.
function CB_B7_Callback(hObject, eventdata, handles)
try
if handles.CB_B7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global B7F1
   B7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B7F2
   B7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B7F3
    B7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B7RA 
  B7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B7VA
   B7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B7F1; 
   global B7F2;
   global B7F3;
   global B7RA;
   global B7VA;
   
    delete(B7F1)
    delete(B7F2)
    delete(B7F3)
    delete(B7RA)
    delete(B7VA)
end
end

% --- Executes on button press in CB_B8.
function CB_B8_Callback(hObject, eventdata, handles)
try
if handles.CB_B8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global B8F1
   B8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B8F2
   B8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B8F3
    B8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B8RA 
  B8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B8VA
   B8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B8F1; 
   global B8F2;
   global B8F3;
   global B8RA;
   global B8VA;
   
    delete(B8F1)
    delete(B8F2)
    delete(B8F3)
    delete(B8RA)
    delete(B8VA)
end
end

% --- Executes on button press in CB_B9.
function CB_B9_Callback(hObject, eventdata, handles)
try
if handles.CB_B9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global B9F1
   B9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B9F2
   B9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B9F3
    B9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B9RA 
  B9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B9VA
   B9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B9F1; 
   global B9F2;
   global B9F3;
   global B9RA;
   global B9VA;
   
    delete(B9F1)
    delete(B9F2)
    delete(B9F3)
    delete(B9RA)
    delete(B9VA)
end
end



% --- Executes on button press in CB_B10.
function CB_B10_Callback(hObject, eventdata, handles)
try
if handles.CB_B10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global B10F1
   B10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B10F2
   B10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B10F3
    B10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B10RA 
  B10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B10VA
   B10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B10F1; 
   global B10F2;
   global B10F3;
   global B10RA;
   global B10VA;
   
    delete(B10F1)
    delete(B10F2)
    delete(B10F3)
    delete(B10RA)
    delete(B10VA)
end
end


% --- Executes on button press in CB_B11.
function CB_B11_Callback(hObject, eventdata, handles)
try
if handles.CB_B11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global B11F1
   B11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B11F2
   B11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B11F3
    B11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B11RA 
  B11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B11VA
   B11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B11F1; 
   global B11F2;
   global B11F3;
   global B11RA;
   global B11VA;
   
    delete(B11F1)
    delete(B11F2)
    delete(B11F3)
    delete(B11RA)
    delete(B11VA)
end
end


% --- Executes on button press in CB_B12.
function CB_B12_Callback(hObject, eventdata, handles)
try
if handles.CB_B12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','B(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','B(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','B(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RB(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VB(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global B12F1
   B12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global B12F2
   B12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global B12F3
    B12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global B12RA 
  B12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global B12VA
   B12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global B12F1; 
   global B12F2;
   global B12F3;
   global B12RA;
   global B12VA;
   
    delete(B12F1)
    delete(B12F2)
    delete(B12F3)
    delete(B12RA)
    delete(B12VA)
end
end


% --- Executes on button press in CB_C1.
function CB_C1_Callback(hObject, eventdata, handles)
try
if handles.CB_C1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global C1F1
   C1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C1F2
   C1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C1F3
    C1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C1RA 
  C1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C1VA
   C1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C1F1; 
   global C1F2;
   global C1F3;
   global C1RA;
   global C1VA;
   
    delete(C1F1)
    delete(C1F2)
    delete(C1F3)
    delete(C1RA)
    delete(C1VA)
end
end
% --- Executes on button press in CB_C2.
function CB_C2_Callback(hObject, eventdata, handles)
try
if handles.CB_C2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global C2F1
   C2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C2F2
   C2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C2F3
    C2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C2RA 
  C2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C2VA
   C2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C2F1; 
   global C2F2;
   global C2F3;
   global C2RA;
   global C2VA;
   
    delete(C2F1)
    delete(C2F2)
    delete(C2F3)
    delete(C2RA)
    delete(C2VA)
end
end

% --- Executes on button press in CB_C3.
function CB_C3_Callback(hObject, eventdata, handles)
try
if handles.CB_C3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global C3F1
   C3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C3F2
   C3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C3F3
    C3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C3RA 
  C3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C3VA
   C3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C3F1; 
   global C3F2;
   global C3F3;
   global C3RA;
   global C3VA;
   
    delete(C3F1)
    delete(C3F2)
    delete(C3F3)
    delete(C3RA)
    delete(C3VA)
end
end

% --- Executes on button press in CB_C4.
function CB_C4_Callback(hObject, eventdata, handles)
try
if handles.CB_C4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global C4F1
   C4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C4F2
   C4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C4F3
    C4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C4RA 
  C4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C4VA
   C4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C4F1; 
   global C4F2;
   global C4F3;
   global C4RA;
   global C4VA;
   
    delete(C4F1)
    delete(C4F2)
    delete(C4F3)
    delete(C4RA)
    delete(C4VA)
end
end

% --- Executes on button press in CB_C5.
function CB_C5_Callback(hObject, eventdata, handles)
try
if handles.CB_C5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global C5F1
   C5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C5F2
   C5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C5F3
    C5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C5RA 
  C5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C5VA
   C5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C5F1; 
   global C5F2;
   global C5F3;
   global C5RA;
   global C5VA;
   
    delete(C5F1)
    delete(C5F2)
    delete(C5F3)
    delete(C5RA)
    delete(C5VA)
end
end
% --- Executes on button press in CB_C6.
function CB_C6_Callback(hObject, eventdata, handles)
try
if handles.CB_C6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global C6F1
   C6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C6F2
   C6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C6F3
    C6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C6RA 
  C6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C6VA
   C6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C6F1; 
   global C6F2;
   global C6F3;
   global C6RA;
   global C6VA;
   
    delete(C6F1)
    delete(C6F2)
    delete(C6F3)
    delete(C6RA)
    delete(C6VA)
end
end
% --- Executes on button press in CB_C7.
function CB_C7_Callback(hObject, eventdata, handles)
try
if handles.CB_C7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global C7F1
   C7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C7F2
   C7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C7F3
    C7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C7RA 
  C7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C7VA
   C7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C7F1; 
   global C7F2;
   global C7F3;
   global C7RA;
   global C7VA;
   
    delete(C7F1)
    delete(C7F2)
    delete(C7F3)
    delete(C7RA)
    delete(C7VA)
end
end
% --- Executes on button press in CB_C8.
function CB_C8_Callback(hObject, eventdata, handles)
try
if handles.CB_C8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global C8F1
   C8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C8F2
   C8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C8F3
    C8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C8RA 
  C8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C8VA
   C8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C8F1; 
   global C8F2;
   global C8F3;
   global C8RA;
   global C8VA;
   
    delete(C8F1)
    delete(C8F2)
    delete(C8F3)
    delete(C8RA)
    delete(C8VA)
end
end


% --- Executes on button press in CB_C9.
function CB_C9_Callback(hObject, eventdata, handles)
try
if handles.CB_C9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global C9F1
   C9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C9F2
   C9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C9F3
    C9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C9RA 
  C9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C9VA
   C9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C9F1; 
   global C9F2;
   global C9F3;
   global C9RA;
   global C9VA;
   
    delete(C9F1)
    delete(C9F2)
    delete(C9F3)
    delete(C9RA)
    delete(C9VA)
end
end



% --- Executes on button press in CB_C10.
function CB_C10_Callback(hObject, eventdata, handles)
try
if handles.CB_C10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global C10F1
   C10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C10F2
   C10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C10F3
    C10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C10RA 
  C10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C10VA
   C10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C10F1; 
   global C10F2;
   global C10F3;
   global C10RA;
   global C10VA;
   
    delete(C10F1)
    delete(C10F2)
    delete(C10F3)
    delete(C10RA)
    delete(C10VA)
end
end

% --- Executes on button press in CB_C11.
function CB_C11_Callback(hObject, eventdata, handles)
try
if handles.CB_C11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global C11F1
   C11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C11F2
   C11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C11F3
    C11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C11RA 
  C11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C11VA
   C11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C11F1; 
   global C11F2;
   global C11F3;
   global C11RA;
   global C11VA;
   
    delete(C11F1)
    delete(C11F2)
    delete(C11F3)
    delete(C11RA)
    delete(C11VA)
end
end

% --- Executes on button press in CB_C12.
function CB_C12_Callback(hObject, eventdata, handles)
try
if handles.CB_C12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','C(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','C(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','C(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RC(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VC(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global C12F1
   C12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global C12F2
   C12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global C12F3
    C12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global C12RA 
  C12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global C12VA
   C12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global C12F1; 
   global C12F2;
   global C12F3;
   global C12RA;
   global C12VA;
   
    delete(C12F1)
    delete(C12F2)
    delete(C12F3)
    delete(C12RA)
    delete(C12VA)
end
end


% --- Executes on button press in CB_D1.
function CB_D1_Callback(hObject, eventdata, handles)
try
if handles.CB_D1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global D1F1
   D1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D1F2
   D1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D1F3
   D1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D1RA 
  D1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D1VA
   D1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D1F1; 
   global D1F2;
   global D1F3;
   global D1RA;
   global D1VA;
   
    delete(D1F1)
    delete(D1F2)
    delete(D1F3)
    delete(D1RA)
    delete(D1VA)
end
end

% --- Executes on button press in CB_D2.
function CB_D2_Callback(hObject, eventdata, handles)
try
if handles.CB_D2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global D2F1
   D2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D2F2
   D2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D2F3
   D2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D2RA 
  D2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D2VA
   D2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D2F1; 
   global D2F2;
   global D2F3;
   global D2RA;
   global D2VA;
   
    delete(D2F1)
    delete(D2F2)
    delete(D2F3)
    delete(D2RA)
    delete(D2VA)
end
end


% --- Executes on button press in CB_D3.
function CB_D3_Callback(hObject, eventdata, handles)
try
if handles.CB_D3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global D3F1
   D3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D3F2
   D3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D3F3
   D3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D3RA 
  D3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D3VA
   D3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D3F1; 
   global D3F2;
   global D3F3;
   global D3RA;
   global D3VA;
   
    delete(D3F1)
    delete(D3F2)
    delete(D3F3)
    delete(D3RA)
    delete(D3VA)
end
end

% --- Executes on button press in CB_D4.
function CB_D4_Callback(hObject, eventdata, handles)
try
if handles.CB_D4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global D4F1
   D4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D4F2
   D4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D4F3
   D4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D4RA 
  D4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D4VA
   D4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D4F1; 
   global D4F2;
   global D4F3;
   global D4RA;
   global D4VA;
   
    delete(D4F1)
    delete(D4F2)
    delete(D4F3)
    delete(D4RA)
    delete(D4VA)
end
end

% --- Executes on button press in CB_D5.
function CB_D5_Callback(hObject, eventdata, handles)
try
if handles.CB_D5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global D5F1
   D5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D5F2
   D5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D5F3
   D5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D5RA 
  D5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D5VA
   D5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D5F1; 
   global D5F2;
   global D5F3;
   global D5RA;
   global D5VA;
   
    delete(D5F1)
    delete(D5F2)
    delete(D5F3)
    delete(D5RA)
    delete(D5VA)
end
end

% --- Executes on button press in CB_D6.
function CB_D6_Callback(hObject, eventdata, handles)
try
if handles.CB_D6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global D6F1
   D6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D6F2
   D6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D6F3
   D6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D6RA 
  D6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D6VA
   D6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D6F1; 
   global D6F2;
   global D6F3;
   global D6RA;
   global D6VA;
   
    delete(D6F1)
    delete(D6F2)
    delete(D6F3)
    delete(D6RA)
    delete(D6VA)
end
end
% --- Executes on button press in CB_D7.
function CB_D7_Callback(hObject, eventdata, handles)
try
if handles.CB_D7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global D7F1
   D7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D7F2
   D7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D7F3
   D7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D7RA 
  D7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D7VA
   D7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D7F1; 
   global D7F2;
   global D7F3;
   global D7RA;
   global D7VA;
   
    delete(D7F1)
    delete(D7F2)
    delete(D7F3)
    delete(D7RA)
    delete(D7VA)
end
end

% --- Executes on button press in CB_D8.
function CB_D8_Callback(hObject, eventdata, handles)
try
if handles.CB_D8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global D8F1
   D8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D8F2
   D8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D8F3
   D8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D8RA 
  D8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D8VA
   D8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D8F1; 
   global D8F2;
   global D8F3;
   global D8RA;
   global D8VA;
   
    delete(D8F1)
    delete(D8F2)
    delete(D8F3)
    delete(D8RA)
    delete(D8VA)
end
end

function CB_D9_Callback(hObject, eventdata, handles)
try
if handles.CB_D9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global D9F1
   D9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D9F2
   D9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D9F3
   D9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D9RA 
  D9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D9VA
   D9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D9F1; 
   global D9F2;
   global D9F3;
   global D9RA;
   global D9VA;
   
    delete(D9F1)
    delete(D9F2)
    delete(D9F3)
    delete(D9RA)
    delete(D9VA)
end
end


% --- Executes on button press in CB_D10.
function CB_D10_Callback(hObject, eventdata, handles)
try
if handles.CB_D10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global D10F1
   D10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D10F2
   D10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D10F3
   D10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D10RA 
  D10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D10VA
   D10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D10F1; 
   global D10F2;
   global D10F3;
   global D10RA;
   global D10VA;
   
    delete(D10F1)
    delete(D10F2)
    delete(D10F3)
    delete(D10RA)
    delete(D10VA)
end
end


% --- Executes on button press in CB_D11.
function CB_D11_Callback(hObject, eventdata, handles)
try
if handles.CB_D11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global D11F1
   D11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D11F2
   D11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D11F3
   D11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D11RA 
  D11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D11VA
   D11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D11F1; 
   global D11F2;
   global D11F3;
   global D11RA;
   global D11VA;
   
    delete(D11F1)
    delete(D11F2)
    delete(D11F3)
    delete(D11RA)
    delete(D11VA)
end
end


% --- Executes on button press in CB_D12.
function CB_D12_Callback(hObject, eventdata, handles)
try
if handles.CB_D12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','D(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','D(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','D(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RD(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VD(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global D12F1
   D12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global D12F2
   D12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global D12F3
   D12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global D12RA 
  D12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global D12VA
   D12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global D12F1; 
   global D12F2;
   global D12F3;
   global D12RA;
   global D12VA;
   
    delete(D12F1)
    delete(D12F2)
    delete(D12F3)
    delete(D12RA)
    delete(D12VA)
end
end




% --- Executes on button press in CB_E1.
function CB_E1_Callback(hObject, eventdata, handles)
try
if handles.CB_E1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global E1F1
   E1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E1F2
   E1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E1F3
   E1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E1RA 
  E1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E1VA
   E1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E1F1; 
   global E1F2;
   global E1F3;
   global E1RA;
   global E1VA;
   
    delete(E1F1)
    delete(E1F2)
    delete(E1F3)
    delete(E1RA)
    delete(E1VA)
end
end

% --- Executes on button press in CB_E2.
function CB_E2_Callback(hObject, eventdata, handles)
try
if handles.CB_E2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global E2F1
   E2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E2F2
   E2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E2F3
   E2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E2RA 
  E2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E2VA
   E2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E2F1; 
   global E2F2;
   global E2F3;
   global E2RA;
   global E2VA;
   
    delete(E2F1)
    delete(E2F2)
    delete(E2F3)
    delete(E2RA)
    delete(E2VA)
end
end

% --- Executes on button press in CB_E3.
function CB_E3_Callback(hObject, eventdata, handles)
try
if handles.CB_E3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global E3F1
   E3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E3F2
   E3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E3F3
   E3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E3RA 
  E3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E3VA
   E3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E3F1; 
   global E3F2;
   global E3F3;
   global E3RA;
   global E3VA;
   
    delete(E3F1)
    delete(E3F2)
    delete(E3F3)
    delete(E3RA)
    delete(E3VA)
end
end

% --- Executes on button press in CB_E4.
function CB_E4_Callback(hObject, eventdata, handles)
try
if handles.CB_E4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global E4F1
   E4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E4F2
   E4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E4F3
   E4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E4RA 
  E4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E4VA
   E4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E4F1; 
   global E4F2;
   global E4F3;
   global E4RA;
   global E4VA;
   
    delete(E4F1)
    delete(E4F2)
    delete(E4F3)
    delete(E4RA)
    delete(E4VA)
end
end

% --- Executes on button press in CB_E5.
function CB_E5_Callback(hObject, eventdata, handles)
try
if handles.CB_E5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global E5F1
   E5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E5F2
   E5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E5F3
   E5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E5RA 
  E5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E5VA
   E5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E5F1; 
   global E5F2;
   global E5F3;
   global E5RA;
   global E5VA;
   
    delete(E5F1)
    delete(E5F2)
    delete(E5F3)
    delete(E5RA)
    delete(E5VA)
end
end

% --- Executes on button press in CB_E6.
function CB_E6_Callback(hObject, eventdata, handles)
try
if handles.CB_E6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global E6F1
   E6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E6F2
   E6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E6F3
   E6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E6RA 
  E6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E6VA
   E6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E6F1; 
   global E6F2;
   global E6F3;
   global E6RA;
   global E6VA;
   
    delete(E6F1)
    delete(E6F2)
    delete(E6F3)
    delete(E6RA)
    delete(E6VA)
end
end

% --- Executes on button press in CB_E7.
function CB_E7_Callback(hObject, eventdata, handles)
try
if handles.CB_E7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global E7F1
   E7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E7F2
   E7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E7F3
   E7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E7RA 
  E7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E7VA
   E7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E7F1; 
   global E7F2;
   global E7F3;
   global E7RA;
   global E7VA;
   
    delete(E7F1)
    delete(E7F2)
    delete(E7F3)
    delete(E7RA)
    delete(E7VA)
end
end

% --- Executes on button press in CB_E8.
function CB_E8_Callback(hObject, eventdata, handles)
try
if handles.CB_E8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global E8F1
   E8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E8F2
   E8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E8F3
   E8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E8RA 
  E8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E8VA
   E8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E8F1; 
   global E8F2;
   global E8F3;
   global E8RA;
   global E8VA;
   
    delete(E8F1)
    delete(E8F2)
    delete(E8F3)
    delete(E8RA)
    delete(E8VA)
end
end

% --- Executes on button press in CB_E9.
function CB_E9_Callback(hObject, eventdata, handles)
try
if handles.CB_E9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global E9F1
   E9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E9F2
   E9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E9F3
   E9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E9RA 
  E9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E9VA
   E9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E9F1; 
   global E9F2;
   global E9F3;
   global E9RA;
   global E9VA;
   
    delete(E9F1)
    delete(E9F2)
    delete(E9F3)
    delete(E9RA)
    delete(E9VA)
end
end


% --- Executes on button press in CB_E10.
function CB_E10_Callback(hObject, eventdata, handles)
try
if handles.CB_E10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global E10F1
   E10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E10F2
   E10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E10F3
   E10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E10RA 
  E10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E10VA
   E10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E10F1; 
   global E10F2;
   global E10F3;
   global E10RA;
   global E10VA;
   
    delete(E10F1)
    delete(E10F2)
    delete(E10F3)
    delete(E10RA)
    delete(E10VA)
end
end


% --- Executes on button press in CB_E11.
function CB_E11_Callback(hObject, eventdata, handles)
try
if handles.CB_E11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global E11F1
   E11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E11F2
   E11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E11F3
   E11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E11RA 
  E11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E11VA
   E11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E11F1; 
   global E11F2;
   global E11F3;
   global E11RA;
   global E11VA;
   
    delete(E11F1)
    delete(E11F2)
    delete(E11F3)
    delete(E11RA)
    delete(E11VA)
end
end



% --- Executes on button press in CB_E12.
function CB_E12_Callback(hObject, eventdata, handles)
try
if handles.CB_E12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','E(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','E(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','E(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RE(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VE(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global E12F1
   E11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global E12F2
   E12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global E12F3
   E12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global E12RA 
  E12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global E12VA
   E12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global E12F1; 
   global E12F2;
   global E12F3;
   global E12RA;
   global E12VA;
   
    delete(E12F1)
    delete(E12F2)
    delete(E12F3)
    delete(E12RA)
    delete(E12VA)
end
end


% --- Executes on button press in CB_F1.
function CB_F1_Callback(hObject, eventdata, handles)
try
if handles.CB_F1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global F1F1
   F1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F1F2
   F1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F1F3
  F1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F1RA 
 F1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F1VA
   F1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F1F1; 
   global F1F2;
   global F1F3;
   global F1RA;
   global F1VA;
   
    delete(F1F1)
    delete(F1F2)
    delete(F1F3)
    delete(F1RA)
    delete(F1VA)
end
end

% --- Executes on button press in CB_F2.
function CB_F2_Callback(hObject, eventdata, handles)
try
if handles.CB_F2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global F2F1
   F2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F2F2
   F2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F2F3
  F2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F2RA 
 F2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F2VA
   F2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F2F1; 
   global F2F2;
   global F2F3;
   global F2RA;
   global F2VA;
   
    delete(F2F1)
    delete(F2F2)
    delete(F2F3)
    delete(F2RA)
    delete(F2VA)
end
end

% --- Executes on button press in CB_F3.
function CB_F3_Callback(hObject, eventdata, handles)
try
if handles.CB_F3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global F3F1
   F3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F3F2
   F3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F3F3
  F3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F3RA 
 F3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F3VA
   F3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F3F1; 
   global F3F2;
   global F3F3;
   global F3RA;
   global F3VA;
   
    delete(F3F1)
    delete(F3F2)
    delete(F3F3)
    delete(F3RA)
    delete(F3VA)
end
end

% --- Executes on button press in CB_F4.
function CB_F4_Callback(hObject, eventdata, handles)
try
if handles.CB_F4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global F4F1
   F4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F4F2
   F4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F4F3
  F4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F4RA 
 F4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F4VA
   F4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F4F1; 
   global F4F2;
   global F4F3;
   global F4RA;
   global F4VA;
   
    delete(F4F1)
    delete(F4F2)
    delete(F4F3)
    delete(F4RA)
    delete(F4VA)
end
end

% --- Executes on button press in CB_F5.
function CB_F5_Callback(hObject, eventdata, handles)
try
if handles.CB_F5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global F5F1
   F5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F5F2
   F5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F5F3
  F5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F5RA 
 F5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F5VA
   F5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F5F1; 
   global F5F2;
   global F5F3;
   global F5RA;
   global F5VA;
   
    delete(F5F1)
    delete(F5F2)
    delete(F5F3)
    delete(F5RA)
    delete(F5VA)
end
end

% --- Executes on button press in CB_F6.
function CB_F6_Callback(hObject, eventdata, handles)
try
if handles.CB_F6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global F6F1
   F6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F6F2
   F6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F6F3
  F6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F6RA 
 F6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F6VA
   F6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F6F1; 
   global F6F2;
   global F6F3;
   global F6RA;
   global F6VA;
   
    delete(F6F1)
    delete(F6F2)
    delete(F6F3)
    delete(F6RA)
    delete(F6VA)
end
end

% --- Executes on button press in CB_F7.
function CB_F7_Callback(hObject, eventdata, handles)
try
if handles.CB_F7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global F7F1
   F7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F7F2
   F7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F7F3
  F7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F7RA 
 F7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F7VA
   F7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F7F1; 
   global F7F2;
   global F7F3;
   global F7RA;
   global F7VA;
   
    delete(F7F1)
    delete(F7F2)
    delete(F7F3)
    delete(F7RA)
    delete(F7VA)
end
end

% --- Executes on button press in CB_F8.
function CB_F8_Callback(hObject, eventdata, handles)
try
if handles.CB_F8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global F8F1
   F8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F8F2
   F8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F8F3
  F8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F8RA 
 F8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F8VA
   F8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F8F1; 
   global F8F2;
   global F8F3;
   global F8RA;
   global F8VA;
   
    delete(F8F1)
    delete(F8F2)
    delete(F8F3)
    delete(F8RA)
    delete(F8VA)
end
end
% --- Executes on button press in CB_F9.
function CB_F9_Callback(hObject, eventdata, handles)
try
if handles.CB_F9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global F9F1
   F9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F9F2
   F9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F9F3
  F9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F9RA 
 F9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F9VA
   F9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F9F1; 
   global F9F2;
   global F9F3;
   global F9RA;
   global F9VA;
   
    delete(F9F1)
    delete(F9F2)
    delete(F9F3)
    delete(F9RA)
    delete(F9VA)
end
end


% --- Executes on button press in CB_F10.
function CB_F10_Callback(hObject, eventdata, handles)
try
if handles.CB_F10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global F10F1
   F10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F10F2
   F10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F10F3
  F10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F10RA 
 F10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F10VA
   F10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F10F1; 
   global F10F2;
   global F10F3;
   global F10RA;
   global F10VA;
   
    delete(F10F1)
    delete(F10F2)
    delete(F10F3)
    delete(F10RA)
    delete(F10VA)
end
end
% --- Executes on button press in CB_F11.
function CB_F11_Callback(hObject, eventdata, handles)
try
if handles.CB_F11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global F11F1
   F11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F11F2
   F11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F11F3
  F11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F11RA 
 F11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F11VA
   F11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F11F1; 
   global F11F2;
   global F11F3;
   global F11RA;
   global F11VA;
   
    delete(F11F1)
    delete(F11F2)
    delete(F11F3)
    delete(F11RA)
    delete(F11VA)
end
end

% --- Executes on button press in CB_F12.
function CB_F12_Callback(hObject, eventdata, handles)
try
if handles.CB_F12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','F(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','F(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','F(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RF(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VF(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global F12F1
   F12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global F12F2
   F12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global F12F3
  F12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global F12RA 
 F12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global F12VA
   F12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global F12F1; 
   global F12F2;
   global F12F3;
   global F12RA;
   global F12VA;
   
    delete(F12F1)
    delete(F12F2)
    delete(F12F3)
    delete(F12RA)
    delete(F12VA)
end
end

% --- Executes on button press in CB_G1.
function CB_G1_Callback(hObject, eventdata, handles)
try
if handles.CB_G1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global G1F1
   G1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G1F2
   G1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G1F3
  G1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G1RA 
 G1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G1VA
  G1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G1F1; 
   global G1F2;
   global G1F3;
   global G1RA;
   global G1VA;
   
    delete(G1F1)
    delete(G1F2)
    delete(G1F3)
    delete(G1RA)
    delete(G1VA)
end
end


% --- Executes on button press in CB_G2.
function CB_G2_Callback(hObject, eventdata, handles)
try
if handles.CB_G2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global G2F1
   G2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G2F2
   G2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G2F3
  G2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G2RA 
 G2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G2VA
  G2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G2F1; 
   global G2F2;
   global G2F3;
   global G2RA;
   global G2VA;
   
    delete(G2F1)
    delete(G2F2)
    delete(G2F3)
    delete(G2RA)
    delete(G2VA)
end
end



% --- Executes on button press in CB_G3.
function CB_G3_Callback(hObject, eventdata, handles)
try
if handles.CB_G3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global G3F1
   G3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G3F2
   G3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G3F3
  G3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G3RA 
 G3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G3VA
  G3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G3F1; 
   global G3F2;
   global G3F3;
   global G3RA;
   global G3VA;
   
    delete(G3F1)
    delete(G3F2)
    delete(G3F3)
    delete(G3RA)
    delete(G3VA)
end
end


% --- Executes on button press in CB_G4.
function CB_G4_Callback(hObject, eventdata, handles)
try
if handles.CB_G4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global G4F1
   G4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G4F2
   G4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G4F3
  G4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G4RA 
 G4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G4VA
  G4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G4F1; 
   global G4F2;
   global G4F3;
   global G4RA;
   global G4VA;
   
    delete(G4F1)
    delete(G4F2)
    delete(G4F3)
    delete(G4RA)
    delete(G4VA)
end
end


% --- Executes on button press in CB_G5.
function CB_G5_Callback(hObject, eventdata, handles)
try
if handles.CB_G5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global G5F1
   G5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G5F2
   G5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G5F3
  G5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G5RA 
 G5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G5VA
  G5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G5F1; 
   global G5F2;
   global G5F3;
   global G5RA;
   global G5VA;
   
    delete(G5F1)
    delete(G5F2)
    delete(G5F3)
    delete(G5RA)
    delete(G5VA)
end
end



% --- Executes on button press in CB_G6.
function CB_G6_Callback(hObject, eventdata, handles)
try
if handles.CB_G6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global G6F1
   G6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G6F2
   G6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G6F3
  G6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G6RA 
 G6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G6VA
  G6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G6F1; 
   global G6F2;
   global G6F3;
   global G6RA;
   global G6VA;
   
    delete(G6F1)
    delete(G6F2)
    delete(G6F3)
    delete(G6RA)
    delete(G6VA)
end
end

% --- Executes on button press in CB_G7.
function CB_G7_Callback(hObject, eventdata, handles)
try
if handles.CB_G7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global G7F1
   G7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G7F2
   G7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G7F3
  G7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G7RA 
 G7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G7VA
  G7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G7F1; 
   global G7F2;
   global G7F3;
   global G7RA;
   global G7VA;
   
    delete(G7F1)
    delete(G7F2)
    delete(G7F3)
    delete(G7RA)
    delete(G7VA)
end
end

% --- Executes on button press in CB_G8.
function CB_G8_Callback(hObject, eventdata, handles)
try
if handles.CB_G8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global G8F1
   G8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G8F2
   G8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G8F3
  G8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G8RA 
 G8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G8VA
  G8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G8F1; 
   global G8F2;
   global G8F3;
   global G8RA;
   global G8VA;
   
    delete(G8F1)
    delete(G8F2)
    delete(G8F3)
    delete(G8RA)
    delete(G8VA)
end
end


% --- Executes on button press in CB_G9.
function CB_G9_Callback(hObject, eventdata, handles)
try
if handles.CB_G9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global G9F1
   G9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G9F2
   G9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G9F3
  G9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G9RA 
 G9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G9VA
  G9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G9F1; 
   global G9F2;
   global G9F3;
   global G9RA;
   global G9VA;
   
    delete(G9F1)
    delete(G9F2)
    delete(G9F3)
    delete(G9RA)
    delete(G9VA)
end
end


% --- Executes on button press in CB_G10.
function CB_G10_Callback(hObject, eventdata, handles)
try
if handles.CB_G10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global G10F1
   G10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G10F2
   G10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G10F3
  G10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G10RA 
 G10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G10VA
  G10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G10F1; 
   global G10F2;
   global G10F3;
   global G10RA;
   global G10VA;
   
    delete(G10F1)
    delete(G10F2)
    delete(G10F3)
    delete(G10RA)
    delete(G10VA)
end
end



% --- Executes on button press in CB_G11.
function CB_G11_Callback(hObject, eventdata, handles)
try
if handles.CB_G11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global G11F1
   G11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G11F2
   G11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G11F3
  G11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G11RA 
 G11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G11VA
  G11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G11F1; 
   global G11F2;
   global G11F3;
   global G11RA;
   global G11VA;
   
    delete(G11F1)
    delete(G11F2)
    delete(G11F3)
    delete(G11RA)
    delete(G11VA)
end
end


% --- Executes on button press in CB_G12.
function CB_G12_Callback(hObject, eventdata, handles)
try
if handles.CB_G12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','G(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','G(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','G(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RG(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VG(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global G12F1
   G12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global G12F2
   G12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global G12F3
  G12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global G12RA 
 G12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global G12VA
  G12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global G12F1; 
   global G12F2;
   global G12F3;
   global G12RA;
   global G12VA;
   
    delete(G12F1)
    delete(G12F2)
    delete(G12F3)
    delete(G12RA)
    delete(G12VA)
end
end


% --- Executes on button press in CB_H1.
function CB_H1_Callback(hObject, eventdata, handles)
try
if handles.CB_H1.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(1,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(1,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(1,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(1,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(1,:)');
end
try
    handles.AX_Preview;
    hold on
   global H1F1
   H1F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H1F2
   H1F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H1F3
  H1F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H1RA 
 H1RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H1VA
  H1VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H1F1; 
   global H1F2;
   global H1F3;
   global H1RA;
   global H1VA;
   
    delete(H1F1)
    delete(H1F2)
    delete(H1F3)
    delete(H1RA)
    delete(H1VA)
end
end

% --- Executes on button press in CB_H2.
function CB_H2_Callback(hObject, eventdata, handles)
try
if handles.CB_H2.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(2,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(2,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(2,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(2,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(2,:)');
end
try
    handles.AX_Preview;
    hold on
   global H2F1
   H2F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H2F2
   H2F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H2F3
  H2F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H2RA 
 H2RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H2VA
  H2VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H2F1; 
   global H2F2;
   global H2F3;
   global H2RA;
   global H2VA;
   
    delete(H2F1)
    delete(H2F2)
    delete(H2F3)
    delete(H2RA)
    delete(H2VA)
end
end



% --- Executes on button press in CB_H3.
function CB_H3_Callback(hObject, eventdata, handles)
try
if handles.CB_H3.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(3,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(3,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(3,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(3,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(3,:)');
end
try
    handles.AX_Preview;
    hold on
   global H3F1
   H3F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H3F2
   H3F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H3F3
  H3F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H3RA 
 H3RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H3VA
  H3VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H3F1; 
   global H3F2;
   global H3F3;
   global H3RA;
   global H3VA;
   
    delete(H3F1)
    delete(H3F2)
    delete(H3F3)
    delete(H3RA)
    delete(H3VA)
end
end

% --- Executes on button press in CB_H4.
function CB_H4_Callback(hObject, eventdata, handles)
try
if handles.CB_H4.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(4,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(4,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(4,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(4,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(4,:)');
end
try
    handles.AX_Preview;
    hold on
   global H4F1
   H4F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H4F2
   H4F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H4F3
  H4F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H4RA 
 H4RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H4VA
  H4VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H4F1; 
   global H4F2;
   global H4F3;
   global H4RA;
   global H4VA;
   
    delete(H4F1)
    delete(H4F2)
    delete(H4F3)
    delete(H4RA)
    delete(H4VA)
end
end


% --- Executes on button press in CB_H5.
function CB_H5_Callback(hObject, eventdata, handles)
try
if handles.CB_H5.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(5,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(5,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(5,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(5,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(5,:)');
end
try
    handles.AX_Preview;
    hold on
   global H5F1
   H5F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H5F2
   H5F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H5F3
  H5F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H5RA 
 H5RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H5VA
  H5VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H5F1; 
   global H5F2;
   global H5F3;
   global H5RA;
   global H5VA;
   
    delete(H5F1)
    delete(H5F2)
    delete(H5F3)
    delete(H5RA)
    delete(H5VA)
end
end



% --- Executes on button press in CB_H6.
function CB_H6_Callback(hObject, eventdata, handles)
try
if handles.CB_H6.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(6,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(6,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(6,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(6,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(6,:)');
end
try
    handles.AX_Preview;
    hold on
   global H6F1
   H6F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H6F2
   H6F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H6F3
  H6F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H6RA 
 H6RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H6VA
  H6VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H6F1; 
   global H6F2;
   global H6F3;
   global H6RA;
   global H6VA;
   
    delete(H6F1)
    delete(H6F2)
    delete(H6F3)
    delete(H6RA)
    delete(H6VA)
end
end


% --- Executes on button press in CB_H7.
function CB_H7_Callback(hObject, eventdata, handles)
try
if handles.CB_H7.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(7,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(7,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(7,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(7,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(7,:)');
end
try
    handles.AX_Preview;
    hold on
   global H7F1
   H7F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H7F2
   H7F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H7F3
  H7F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H7RA 
 H7RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H7VA
  H7VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H7F1; 
   global H7F2;
   global H7F3;
   global H7RA;
   global H7VA;
   
    delete(H7F1)
    delete(H7F2)
    delete(H7F3)
    delete(H7RA)
    delete(H7VA)
end
end



% --- Executes on button press in CB_H8.
function CB_H8_Callback(hObject, eventdata, handles)
try
if handles.CB_H8.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(8,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(8,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(8,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(8,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(8,:)');
end
try
    handles.AX_Preview;
    hold on
   global H8F1
   H8F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H8F2
   H8F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H8F3
  H8F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H8RA 
 H8RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H8VA
  H8VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H8F1; 
   global H8F2;
   global H8F3;
   global H8RA;
   global H8VA;
   
    delete(H8F1)
    delete(H8F2)
    delete(H8F3)
    delete(H8RA)
    delete(H8VA)
end
end


% --- Executes on button press in CB_H9.
function CB_H9_Callback(hObject, eventdata, handles)
try
if handles.CB_H9.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(9,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(9,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(9,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(9,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(9,:)');
end
try
    handles.AX_Preview;
    hold on
   global H9F1
   H9F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H9F2
   H9F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H9F3
  H9F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H9RA 
 H9RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H9VA
  H9VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H9F1; 
   global H9F2;
   global H9F3;
   global H9RA;
   global H9VA;
   
    delete(H9F1)
    delete(H9F2)
    delete(H9F3)
    delete(H9RA)
    delete(H9VA)
end
end



% --- Executes on button press in CB_H10.
function CB_H10_Callback(hObject, eventdata, handles)
try
if handles.CB_H10.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(10,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(10,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(10,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(10,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(10,:)');
end
try
    handles.AX_Preview;
    hold on
   global H10F1
   H10F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H10F2
   H10F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H10F3
  H10F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H10RA 
 H10RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H10VA
  H10VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H10F1; 
   global H10F2;
   global H10F3;
   global H10RA;
   global H10VA;
   
    delete(H10F1)
    delete(H10F2)
    delete(H10F3)
    delete(H10RA)
    delete(H10VA)
end
end


% --- Executes on button press in CB_H11.
function CB_H11_Callback(hObject, eventdata, handles)
try
if handles.CB_H11.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(11,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(11,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(11,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(11,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(11,:)');
end
try
    handles.AX_Preview;
    hold on
   global H11F1
   H11F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H11F2
   H11F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H11F3
  H11F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H11RA 
 H11RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H11VA
  H11VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H11F1; 
   global H11F2;
   global H11F3;
   global H11RA;
   global H11VA;
   
    delete(H11F1)
    delete(H11F2)
    delete(H11F3)
    delete(H11RA)
    delete(H11VA)
end
end



% --- Executes on button press in CB_H12.
function CB_H12_Callback(hObject, eventdata, handles)
try
if handles.CB_H12.Value == 1
tem = evalin('base','tem');
if handles.RB_Filtro1.Value == 1
    AF1 = evalin('base','H(12,:,1)');
end
if handles.RB_Filtro2.Value == 1
    AF2 = evalin('base','H(12,:,2)');
end
if handles.RB_Filtro3.Value == 1
   AF3 = evalin('base','H(12,:,3)');
end
if handles.RB_ROX.Value == 1
    AR = evalin('base','RH(12,:)');
end
if handles.RB_VIC.Value == 1
    AV = evalin('base','VH(12,:)');
end
try
    handles.AX_Preview;
    hold on
   global H12F1
   H12F1 = plot(tem,AF1);
    hold off
end
 try
    handles.AX_Preview;
    hold on
   global H12F2
   H12F2 = plot(tem,AF2);
    hold off
 end
try
    handles.AX_Preview;
    hold on
    global H12F3
  H12F3 = plot(tem,AF3);
    hold off
end
try
    handles.AX_Preview;
    hold on
  global H12RA 
 H12RA = plot(tem,AR);
    hold off
end
try
    handles.AX_Preview;
    hold on
   global H12VA
  H12VA = plot(tem,AV);
   handles.AX_Preview.XData
    hold off
end
else
   global H12F1; 
   global H12F2;
   global H12F3;
   global H12RA;
   global H12VA;
   
    delete(H12F1)
    delete(H12F2)
    delete(H12F3)
    delete(H12RA)
    delete(H12VA)
end
end

% --------------------------------------------------------------------
function Cargar_ClickedCallback(hObject, eventdata, handles)
tem0 = str2num(handles.ET_tem.String); 
paso = str2num(handles.ET_pasotem.String);
[FileName,PathName] = uigetfile('*.*','Selecciona archivo');
if FileName==0
 return;
else
Direccion = strcat(PathName,FileName);
end
try
proteinaF = xlsread((Direccion),'Raw Data','C9:E10136');
proteinaR = xlsread((Direccion),'Multicomponent Data','C9:C10136');
proteinaV = xlsread((Direccion),'Multicomponent Data','D9:D10136');
ciclos = max(xlsread((Direccion),'Raw Data','B9:B11000'));
end

for j = 1:3
   
for k = 1:12
         contador = 0;
     
for i = 1:ciclos
try
    A(k,i,j) = proteinaF((k+contador),j);
    B(k,i,j) = proteinaF((k+8+contador),j);
    C(k,i,j) = proteinaF((k+16+contador),j);
    D(k,i,j) = proteinaF((k+24+contador),j);
    E(k,i,j) = proteinaF((k+32+contador),j);
    F(k,i,j) = proteinaF((k+40+contador),j);
    G(k,i,j) = proteinaF((k+48+contador),j);
    H(k,i,j) = proteinaF((k+56+contador),j);
end
try
    RA(k,i) = proteinaR((k+contador),1);
    RB(k,i) = proteinaR((k+8+contador),1);
    RC(k,i) = proteinaR((k+16+contador),1);
    RD(k,i) = proteinaR((k+24+contador),1);
    RE(k,i) = proteinaR((k+32+contador),1);
    RF(k,i) = proteinaR((k+40+contador),1);
    RG(k,i) = proteinaR((k+48+contador),1);
    RH(k,i) = proteinaR((k+56+contador),1);
end
try
    VA(k,i) = proteinaV((k+contador),1);
    VB(k,i) = proteinaV((k+8+contador),1);
    VC(k,i) = proteinaV((k+16+contador),1);
    VD(k,i) = proteinaV((k+24+contador),1);
    VE(k,i) = proteinaV((k+32+contador),1);
    VF(k,i) = proteinaV((k+40+contador),1);
    VG(k,i) = proteinaV((k+48+contador),1);
    VH(k,i) = proteinaV((k+56+contador),1);
    
 if handles.RB_48p.Value == 1 
contador = contador + 48;
 else
contador = contador + 64;
 end

end
end
end
end
if handles.CB_AUTO.Value == 1
    Tamano = length(RA)-1;
    tem = 25:(25+Tamano);
else
    Tamano = length(RA)-1;
    tem = tem0:paso:(tem0+Tamano);
end
try
assignin('base','tem',tem);
assignin('base','ciclos',ciclos);
assignin('base','A',A);
assignin('base','B',B);
assignin('base','C',C);
assignin('base','D',D);
assignin('base','E',E);
assignin('base','F',F);
assignin('base','G',G);
assignin('base','H',H);


assignin('base','RA',RA);
assignin('base','RB',RB);
assignin('base','RC',RC);
assignin('base','RD',RD);
assignin('base','RE',RE);
assignin('base','RF',RF);
assignin('base','RG',RG);
assignin('base','RH',RH);

assignin('base','VA',VA);
assignin('base','VB',VB);
assignin('base','VC',VC);
assignin('base','VD',VD);
assignin('base','VE',VE);
assignin('base','VF',VF);
assignin('base','VG',VG);
assignin('base','VH',VH);
end
set(handles.panel_muestra,'Visible','on');
set(handles.PB_Sample,'Visible','on');
set(handles.PB_Sample,'Enable','on');
set(handles.PB_Control1,'Visible','on');
set(handles.PB_Control1,'Enable','on');
if handles.RB_48p.Value == 1
    set(handles.panel96a,'Visible','off');
     set(handles.panel96b,'Visible','off');

else
     set(handles.panel96a,'Visible','on');
     set(handles.panel96b,'Visible','on');
   
end


% --- Executes on button press in PB_Sample.
function PB_Sample_Callback(hObject, eventdata, handles)
Contador = 0;
Suma = 0;
concatenado = [];
if handles.RB_ROX.Value == 1
    if handles.CB_A1.Value ==1
       RA = evalin('base','RA(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RA;
        concatenado = [concatenado;RA];
    end
     if handles.CB_A2.Value ==1
       RA = evalin('base','RA(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A3.Value ==1
       RA = evalin('base','RA(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A4.Value ==1
       RA = evalin('base','RA(4,:)');
       Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A5.Value ==1
       RA = evalin('base','RA(5,:)');
       Contador = Contador + 1;
        Suma = Suma + RA;  
        concatenado = [concatenado;RA];
     end
     if handles.CB_A6.Value ==1
       RA = evalin('base','RA(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A7.Value ==1
       RA = evalin('base','RA(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A8.Value ==1
       RA = evalin('base','RA(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A9.Value ==1
       RA = evalin('base','RA(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A10.Value ==1
       RA = evalin('base','RA(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A11.Value ==1
       RA = evalin('base','RA(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     if handles.CB_A12.Value ==1
       RA = evalin('base','RA(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RA; 
        concatenado = [concatenado;RA];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       RB = evalin('base','RB(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RB; 
        concatenado = [concatenado;RB];
    end
     if handles.CB_B2.Value ==1
       RB = evalin('base','RB(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;  
        concatenado = [concatenado;RB];
     end
     if handles.CB_B3.Value ==1
       RB = evalin('base','RB(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;  
        concatenado = [concatenado;RB];
     end
     if handles.CB_B4.Value ==1
       RB = evalin('base','RB(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;  
        concatenado = [concatenado;RB];
     end
     if handles.CB_B5.Value ==1
       RB = evalin('base','RB(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     if handles.CB_B6.Value ==1
       RB = evalin('base','RB(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;  
        concatenado = [concatenado;RB];
     end
     if handles.CB_B7.Value ==1
       RB = evalin('base','RB(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;  
        concatenado = [concatenado;RB];
     end
     if handles.CB_B8.Value ==1
       RB = evalin('base','RB(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     if handles.CB_B9.Value ==1
       RB = evalin('base','RB(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     if handles.CB_B10.Value ==1
       RB = evalin('base','RB(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     if handles.CB_B11.Value ==1
       RB = evalin('base','RB(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     if handles.CB_B12.Value ==1
       RB = evalin('base','RB(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RB;
        concatenado = [concatenado;RB];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       RC = evalin('base','RC(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
    end
     if handles.CB_C2.Value ==1
       RC = evalin('base','RC(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
     end
     if handles.CB_C3.Value ==1
       RC = evalin('base','RC(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
     end
     if handles.CB_C4.Value ==1
       RC = evalin('base','RC(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
     end
     if handles.CB_C5.Value ==1
       RC = evalin('base','RC(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
     end
     if handles.CB_C6.Value ==1
       RC = evalin('base','RC(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;  
        concatenado = [concatenado;RC];
     end
     if handles.CB_C7.Value ==1
       RC = evalin('base','RC(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RC;
        concatenado = [concatenado;RC];
     end
     if handles.CB_C8.Value ==1
       RC = evalin('base','RC(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RC; 
        concatenado = [concatenado;RC];
     end
          if handles.CB_C9.Value ==1
       RC = evalin('base','RC(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RC; 
        concatenado = [concatenado;RC];
          end
          if handles.CB_C10.Value ==1
       RC = evalin('base','RC(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RC; 
        concatenado = [concatenado;RC];
          end
          if handles.CB_C11.Value ==1
       RC = evalin('base','RC(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RC; 
        concatenado = [concatenado;RC];
          end
          if handles.CB_C12.Value ==1
       RC = evalin('base','RC(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RC; 
        concatenado = [concatenado;RC];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       RD = evalin('base','RD(1,:)');
       Contador = Contador + 1;
        Suma = Suma + RD;  
        concatenado = [concatenado;RD];
    end
     if handles.CB_D2.Value ==1
       RD = evalin('base','RD(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RD; 
         concatenado = [concatenado;RD];
     end
     if handles.CB_D3.Value ==1
       RD = evalin('base','RD(3,:)');
       Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D4.Value ==1
       RD = evalin('base','RD(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RD; 
         concatenado = [concatenado;RD];
     end
     if handles.CB_D5.Value ==1
       RD = evalin('base','RD(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D6.Value ==1
       RD = evalin('base','RD(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RD; 
         concatenado = [concatenado;RD];
     end
     if handles.CB_D7.Value ==1
       RD = evalin('base','RD(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D8.Value ==1
       RD = evalin('base','RD(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D9.Value ==1
       RD = evalin('base','RD(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D10.Value ==1
       RD = evalin('base','RD(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D11.Value ==1
       RD = evalin('base','RD(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
     if handles.CB_D12.Value ==1
       RD = evalin('base','RD(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RD;  
         concatenado = [concatenado;RD];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       RE = evalin('base','RE(1,:)');
       Contador = Contador + 1;
        Suma = Suma + RE; 
         concatenado = [concatenado;RE];
    end
     if handles.CB_E2.Value ==1
       RE = evalin('base','RE(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end
     if handles.CB_E3.Value ==1
       RE = evalin('base','RE(3,:)');
       Contador = Contador + 1;
        Suma = Suma + RE; 
        concatenado = [concatenado;RE];
     end
     if handles.CB_E4.Value ==1
       RE = evalin('base','RE(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end
     if handles.CB_E5.Value ==1
       RE = evalin('base','RE(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end
     if handles.CB_E6.Value ==1
       RE = evalin('base','RE(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;
        concatenado = [concatenado;RE];
     end
     if handles.CB_E7.Value ==1
       RE = evalin('base','RE(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end
     if handles.CB_E8.Value ==1
       RE = evalin('base','RE(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end
        if handles.CB_E9.Value ==1
       RE = evalin('base','RE(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
        end
        if handles.CB_E10.Value ==1
       RE = evalin('base','RE(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
        end
        if handles.CB_E11.Value ==1
       RE = evalin('base','RE(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
        end
        if handles.CB_E12.Value ==1
       RE = evalin('base','RE(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RE;  
        concatenado = [concatenado;RE];
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       RF = evalin('base','RF(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RF; 
        concatenado = [concatenado;RF];
    end
     if handles.CB_F2.Value ==1
       RF = evalin('base','RF(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
     end
     if handles.CB_F3.Value ==1
       RF = evalin('base','RF(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
     end
     if handles.CB_F4.Value ==1
       RF = evalin('base','RF(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RF; 
        concatenado = [concatenado;RF];
     end
     if handles.CB_F5.Value ==1
       RF = evalin('base','RF(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RF; 
        concatenado = [concatenado;RF];
     end
     if handles.CB_F6.Value ==1
       RF = evalin('base','RF(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
     end
     if handles.CB_F7.Value ==1
       RF = evalin('base','RF(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RF; 
        concatenado = [concatenado;RF];
     end
     if handles.CB_F8.Value ==1
       RF = evalin('base','RF(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
     end
          if handles.CB_F9.Value ==1
       RF = evalin('base','RF(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
          end
          if handles.CB_F10.Value ==1
       RF = evalin('base','RF(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
          end
          if handles.CB_F11.Value ==1
       RF = evalin('base','RF(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
          end
          if handles.CB_F12.Value ==1
       RF = evalin('base','RF(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RF;  
        concatenado = [concatenado;RF];
          end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RG
      if handles.CB_G1.Value ==1
       RG = evalin('base','RG(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RG; 
        concatenado = [concatenado;RG];
    end
     if handles.CB_G2.Value ==1
       RG = evalin('base','RG(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
     end
     if handles.CB_G3.Value ==1
       RG = evalin('base','RG(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
     end
     if handles.CB_G4.Value ==1
       RG = evalin('base','RG(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RG; 
        concatenado = [concatenado;RG];
     end
     if handles.CB_G5.Value ==1
       RG = evalin('base','RG(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RG; 
        concatenado = [concatenado;RG];
     end
     if handles.CB_G6.Value ==1
       RG = evalin('base','RG(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
     end
     if handles.CB_G7.Value ==1
       RG = evalin('base','RG(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RG; 
        concatenado = [concatenado;RG];
     end
     if handles.CB_G8.Value ==1
       RG = evalin('base','RG(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
     end
          if handles.CB_G9.Value ==1
       RG = evalin('base','RG(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
          end
          if handles.CB_G10.Value ==1
       RG = evalin('base','RG(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
          end
          if handles.CB_G11.Value ==1
       RG = evalin('base','RG(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
          end
          if handles.CB_G12.Value ==1
       RG = evalin('base','RG(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RG;  
        concatenado = [concatenado;RG];
          end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RH
      if handles.CB_H1.Value ==1
       RH = evalin('base','RH(1,:)');
        Contador = Contador + 1;
        Suma = Suma + RH; 
        concatenado = [concatenado;RH];
    end
     if handles.CB_H2.Value ==1
       RH = evalin('base','RH(2,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
     end
     if handles.CB_H3.Value ==1
       RH = evalin('base','RH(3,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
     end
     if handles.CB_H4.Value ==1
       RH = evalin('base','RH(4,:)');
        Contador = Contador + 1;
        Suma = Suma + RH; 
        concatenado = [concatenado;RH];
     end
     if handles.CB_H5.Value ==1
       RH = evalin('base','RH(5,:)');
        Contador = Contador + 1;
        Suma = Suma + RH; 
        concatenado = [concatenado;RH];
     end
     if handles.CB_H6.Value ==1
       RH = evalin('base','RH(6,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
     end
     if handles.CB_H7.Value ==1
       RH = evalin('base','RH(7,:)');
        Contador = Contador + 1;
        Suma = Suma + RH; 
        concatenado = [concatenado;RH];
     end
     if handles.CB_H8.Value ==1
       RH = evalin('base','RH(8,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
     end
          if handles.CB_H9.Value ==1
       RH = evalin('base','RH(9,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
          end
          if handles.CB_H10.Value ==1
       RH = evalin('base','RH(10,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
          end
          if handles.CB_H11.Value ==1
       RH = evalin('base','RH(11,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
          end
          if handles.CB_H12.Value ==1
       RH = evalin('base','RH(12,:)');
        Contador = Contador + 1;
        Suma = Suma + RH;  
        concatenado = [concatenado;RH];
          end
     
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VIC
if handles.RB_VIC.Value == 1
    if handles.CB_A1.Value ==1
       VA = evalin('base','VA(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
    end
     if handles.CB_A2.Value ==1
       VA = evalin('base','VA(2,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
     end
     if handles.CB_A3.Value ==1
       VA = evalin('base','VA(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
     end
     if handles.CB_A4.Value ==1
       VA = evalin('base','VA(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VA;
        concatenado = [concatenado;VA];
     end
     if handles.CB_A5.Value ==1
       VA = evalin('base','VA(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VA;
        concatenado = [concatenado;VA];
     end
     if handles.CB_A6.Value ==1
       VA = evalin('base','VA(6,:)');
       Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
     end
     if handles.CB_A7.Value ==1
       VA = evalin('base','VA(7,:)');
       Contador = Contador + 1;
        Suma = Suma + VA;  
        concatenado = [concatenado;VA];
     end
     if handles.CB_A8.Value ==1
       VA = evalin('base','VA(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
     end
       if handles.CB_A9.Value ==1
       VA = evalin('base','VA(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
       end
       if handles.CB_A10.Value ==1
       VA = evalin('base','VA(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
       end
       if handles.CB_A11.Value ==1
       VA = evalin('base','VA(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
       end
       if handles.CB_A12.Value ==1
       VA = evalin('base','VA(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VA; 
        concatenado = [concatenado;VA];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       VB = evalin('base','VB(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
    end
     if handles.CB_B2.Value ==1
       VB = evalin('base','VB(2,:)');
         Contador = Contador + 1;
        Suma = Suma + VB;
        concatenado = [concatenado;VB];
     end
     if handles.CB_B3.Value ==1
       VB = evalin('base','VB(3,:)');
         Contador = Contador + 1;
        Suma = Suma + VB;  
        concatenado = [concatenado;VB];
     end
     if handles.CB_B4.Value ==1
       VB = evalin('base','VB(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VB;  
        concatenado = [concatenado;VB];
     end
     if handles.CB_B5.Value ==1
       VB = evalin('base','VB(5,:)');
     Contador = Contador + 1;
        Suma = Suma + VB;  
        concatenado = [concatenado;VB];
     end
     if handles.CB_B6.Value ==1
       VB = evalin('base','VB(6,:)');
        Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
     end
     if handles.CB_B7.Value ==1
       VB = evalin('base','VB(7,:)');
         Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
     end
     if handles.CB_B8.Value ==1
       VB = evalin('base','VB(8,:)');
       Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
     end
       if handles.CB_B9.Value ==1
       VB = evalin('base','VB(9,:)');
       Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
       end
       if handles.CB_B10.Value ==1
       VB = evalin('base','VB(10,:)');
       Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
       end
       if handles.CB_B11.Value ==1
       VB = evalin('base','VB(11,:)');
       Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
       end
       if handles.CB_B12.Value ==1
       VB = evalin('base','VB(12,:)');
       Contador = Contador + 1;
        Suma = Suma + VB; 
        concatenado = [concatenado;VB];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       VC = evalin('base','VC(1,:)');
       Contador = Contador + 1;
        Suma = Suma + VC; 
        concatenado = [concatenado;VC];
    end
     if handles.CB_C2.Value ==1
       VC = evalin('base','VC(2,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
     end
     if handles.CB_C3.Value ==1
       VC = evalin('base','VC(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
     end
     if handles.CB_C4.Value ==1
       VC = evalin('base','VC(4,:)');
       Contador = Contador + 1;
        Suma = Suma + VC; 
        concatenado = [concatenado;VC];
     end
     if handles.CB_C5.Value ==1
       VC = evalin('base','VC(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VC; 
        concatenado = [concatenado;VC];
     end
     if handles.CB_C6.Value ==1
       VC = evalin('base','VC(6,:)');
       Contador = Contador + 1;
        Suma = Suma + VC;
        concatenado = [concatenado;VC];
     end
     if handles.CB_C7.Value ==1
       VC = evalin('base','VC(7,:)');
        Contador = Contador + 1;
        Suma = Suma + VC; 
        concatenado = [concatenado;VC];
     end
     if handles.CB_C8.Value ==1
       VC = evalin('base','VC(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
     end
       if handles.CB_C9.Value ==1
       VC = evalin('base','VC(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
       end
       if handles.CB_C10.Value ==1
       VC = evalin('base','VC(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
       end
       if handles.CB_C11.Value ==1
       VC = evalin('base','VC(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
       end
       if handles.CB_C12.Value ==1
       VC = evalin('base','VC(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VC;  
        concatenado = [concatenado;VC];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
      VD = evalin('base','VD(1,:)');
      Contador = Contador + 1;
        Suma = Suma + VD; 
        concatenado = [concatenado;VD];
    end
     if handles.CB_D2.Value ==1
       VD = evalin('base','VD(2,:)');
         Contador = Contador + 1;
        Suma = Suma + VD;  
         concatenado = [concatenado;VD];
     end
     if handles.CB_D3.Value ==1
       VD = evalin('base','VD(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VD;   
         concatenado = [concatenado;VD];
     end
     if handles.CB_D4.Value ==1
       VD = evalin('base','VD(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VD;  
         concatenado = [concatenado;VD];
     end
     if handles.CB_D5.Value ==1
       VD = evalin('base','VD(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
     end
     if handles.CB_D6.Value ==1
       VD = evalin('base','VD(6,:)');
        Contador = Contador + 1;
        Suma = Suma + VD;  
         concatenado = [concatenado;VD];
     end
     if handles.CB_D7.Value ==1
       VD = evalin('base','VD(7,:)');
       Contador = Contador + 1;
        Suma = Suma + VD;  
        concatenado = [concatenado;VD];
     end
     if handles.CB_D8.Value ==1
       VD = evalin('base','VD(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
     end
         if handles.CB_D9.Value ==1
       VD = evalin('base','VD(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
         end
         if handles.CB_D10.Value ==1
       VD = evalin('base','VD(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
         end
         if handles.CB_D11.Value ==1
       VD = evalin('base','VD(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
         end
            if handles.CB_D12.Value ==1
       VD = evalin('base','VD(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VD; 
         concatenado = [concatenado;VD];
     end
        
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       VE = evalin('base','RV(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;   
         concatenado = [concatenado;VE];
    end
     if handles.CB_E2.Value ==1
       VE = evalin('base','VE(2,:)');
       Contador = Contador + 1;
        Suma = Suma + VE; 
        concatenado = [concatenado;VE];
     end
     if handles.CB_E3.Value ==1
       VE = evalin('base','VE(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;   
        concatenado = [concatenado;VE];
     end
     if handles.CB_E4.Value ==1
       VE = evalin('base','VE(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
     end
     if handles.CB_E5.Value ==1
       VE = evalin('base','VE(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;
        concatenado = [concatenado;VE];
     end
     if handles.CB_E6.Value ==1
       VE = evalin('base','RE(6,:)');
       Contador = Contador + 1;
        Suma = Suma + VE; 
        concatenado = [concatenado;VE];
     end
     if handles.CB_E7.Value ==1
       VE = evalin('base','VE(7,:)');
        Contador = Contador + 1;
        Suma = Suma + VE; 
        concatenado = [concatenado;VE];
     end
     if handles.CB_E8.Value ==1
       VE = evalin('base','VE(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
     end
          if handles.CB_E9.Value ==1
       VE = evalin('base','VE(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
          end
          if handles.CB_E10.Value ==1
       VE = evalin('base','VE(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
          end
          if handles.CB_E11.Value ==1
       VE = evalin('base','VE(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
          end
          if handles.CB_E12.Value ==1
       VE = evalin('base','VE(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VE;  
        concatenado = [concatenado;VE];
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       VF = evalin('base','VF(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
    end
     if handles.CB_F2.Value ==1
       VF = evalin('base','VF(2,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
     end
     if handles.CB_F3.Value ==1
       VF = evalin('base','VF(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
     end
     if handles.CB_F4.Value ==1
       VF = evalin('base','VF(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VF;  
        concatenado = [concatenado;VF];
     end
     if handles.CB_F5.Value ==1
       VF = evalin('base','VF(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VF;  
        concatenado = [concatenado;VF];
     end
     if handles.CB_F6.Value ==1
       VF = evalin('base','VF(6,:)');
       Contador = Contador + 1;
        Suma = Suma + VF;  
        concatenado = [concatenado;VF];
     end
     if handles.CB_F7.Value ==1
       VF = evalin('base','VF(7,:)');
       Contador = Contador + 1;
        Suma = Suma + VF;  
        concatenado = [concatenado;VF];
     end
     if handles.CB_F8.Value ==1
       VF = evalin('base','VF(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
     end
        if handles.CB_F9.Value ==1
       VF = evalin('base','VF(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
        end
        if handles.CB_F10.Value ==1
       VF = evalin('base','VF(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
        end
        if handles.CB_F11.Value ==1
       VF = evalin('base','VF(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
        end
        if handles.CB_F12.Value ==1
       VF = evalin('base','VF(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VF; 
        concatenado = [concatenado;VF];
     end
               %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VG
      if handles.CB_G1.Value ==1
       VG = evalin('base','VG(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VG; 
        concatenado = [concatenado;VG];
    end
     if handles.CB_G2.Value ==1
       VG = evalin('base','VG(2,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
     end
     if handles.CB_G3.Value ==1
      VG = evalin('base','VG(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
     end
     if handles.CB_G4.Value ==1
       VG = evalin('base','VG(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VG; 
        concatenado = [concatenado;VG];
     end
     if handles.CB_G5.Value ==1
       VG = evalin('base','VG(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VG; 
        concatenado = [concatenado;VG];
     end
     if handles.CB_G6.Value ==1
       VG = evalin('base','VG(6,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
     end
     if handles.CB_G7.Value ==1
       VG = evalin('base','VG(7,:)');
        Contador = Contador + 1;
        Suma = Suma + VG; 
        concatenado = [concatenado;VG];
     end
     if handles.CB_G8.Value ==1
       VG = evalin('base','VG(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
     end
          if handles.CB_G9.Value ==1
       VG = evalin('base','VG(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
          end
          if handles.CB_G10.Value ==1
       VG = evalin('base','VG(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
          end
          if handles.CB_G11.Value ==1
       VG = evalin('base','VG(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
          end
          if handles.CB_G12.Value ==1
       VG = evalin('base','VG(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VG;  
        concatenado = [concatenado;VG];
          end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VH
      if handles.CB_H1.Value ==1
       VH = evalin('base','VH(1,:)');
        Contador = Contador + 1;
        Suma = Suma + VH; 
        concatenado = [concatenado;VH];
    end
     if handles.CB_H2.Value ==1
       VH = evalin('base','VH(2,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
     end
     if handles.CB_H3.Value ==1
       VH = evalin('base','VH(3,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
     end
     if handles.CB_H4.Value ==1
       VH = evalin('base','VH(4,:)');
        Contador = Contador + 1;
        Suma = Suma + VH; 
        concatenado = [concatenado;VH];
     end
     if handles.CB_H5.Value ==1
       VH = evalin('base','VH(5,:)');
        Contador = Contador + 1;
        Suma = Suma + VH; 
        concatenado = [concatenado;VH];
     end
     if handles.CB_H6.Value ==1
       VH = evalin('base','VH(6,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
     end
     if handles.CB_H7.Value ==1
       VH = evalin('base','VH(7,:)');
        Contador = Contador + 1;
        Suma = Suma + VH; 
        concatenado = [concatenado;VH];
     end
     if handles.CB_H8.Value ==1
       VH = evalin('base','VH(8,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
     end
          if handles.CB_H9.Value ==1
       VH = evalin('base','VH(9,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
          end
          if handles.CB_H10.Value ==1
       VH = evalin('base','VH(10,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
          end
          if handles.CB_H11.Value ==1
       VH = evalin('base','VH(11,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
          end
          if handles.CB_H12.Value ==1
       VH = evalin('base','VH(12,:)');
        Contador = Contador + 1;
        Suma = Suma + VH;  
        concatenado = [concatenado;VH];
          end
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>    
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro1
if handles.RB_Filtro1.Value == 1
    
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VA
    if handles.CB_A1.Value ==1
       A = evalin('base','A(1,:,1)');
       Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
    end
     if handles.CB_A2.Value ==1
       A = evalin('base','A(2,:,1)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     if handles.CB_A3.Value ==1
       A = evalin('base','A(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A4.Value ==1
       A = evalin('base','A(4,:,1)');
       Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A5.Value ==1
       A = evalin('base','A(5,:,1)');
        Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A6.Value ==1
       A = evalin('base','A(6,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;     
        concatenado = [concatenado;A];
     end
     if handles.CB_A7.Value ==1
       A = evalin('base','A(7,:,1)');
       Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     if handles.CB_A8.Value ==1
       A = evalin('base','A(8,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
      if handles.CB_A9.Value ==1
       A = evalin('base','A(9,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
      end
      if handles.CB_A10.Value ==1
       A = evalin('base','A(10,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
      end
      if handles.CB_A11.Value ==1
       A = evalin('base','A(11,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
      end
      if handles.CB_A12.Value ==1
       A = evalin('base','A(12,:,1)');
         Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VB
    if handles.CB_B1.Value ==1
       B = evalin('base','B(1,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;    
        concatenado = [concatenado;B];
    end
     if handles.CB_B2.Value ==1
       B = evalin('base','B(2,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     if handles.CB_B3.Value ==1
       B = evalin('base','B(3,:,1)');
       Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     if handles.CB_B4.Value ==1
       B = evalin('base','B(4,:,1)');
      Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     if handles.CB_B5.Value ==1
       B = evalin('base','B(5,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     if handles.CB_B6.Value ==1
       B = evalin('base','B(6,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     if handles.CB_B7.Value ==1
       B = evalin('base','B(7,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     if handles.CB_B8.Value ==1
       B = evalin('base','B(8,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
      if handles.CB_B9.Value ==1
       B = evalin('base','B(9,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
      end
      if handles.CB_B10.Value ==1
       B = evalin('base','B(10,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
      end
      if handles.CB_B11.Value ==1
       B = evalin('base','B(11,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
      end
      if handles.CB_B12.Value ==1
       B = evalin('base','B(12,:,1)');
        Contador = Contador + 1;
        Suma = Suma + B;  
        concatenado = [concatenado;B];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VC
       
      if handles.CB_C1.Value ==1
       C = evalin('base','C(1,:,1)');
       Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
    end
     if handles.CB_C2.Value ==1
       C = evalin('base','C(2,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
     end
     if handles.CB_C3.Value ==1
       C = evalin('base','C(3,:,1)');
         Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
     if handles.CB_C4.Value ==1
       C = evalin('base','C(4,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C5.Value ==1
       C = evalin('base','C(5,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
     end
     if handles.CB_C6.Value ==1
       C = evalin('base','C(6,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
     end
     if handles.CB_C7.Value ==1
       C = evalin('base','C(7,:,1)');
         Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C8.Value ==1
       C = evalin('base','C(8,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;    
        concatenado = [concatenado;C];
     end
      if handles.CB_C9.Value ==1
       C = evalin('base','C(9,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;    
        concatenado = [concatenado;C];
      end
      if handles.CB_C10.Value ==1
       C = evalin('base','C(10,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;    
        concatenado = [concatenado;C];
      end
      if handles.CB_C11.Value ==1
       C = evalin('base','C(11,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;    
        concatenado = [concatenado;C];
      end
      if handles.CB_C12.Value ==1
       C = evalin('base','C(12,:,1)');
          Contador = Contador + 1;
        Suma = Suma + C;    
        concatenado = [concatenado;C];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VD
      if handles.CB_D1.Value ==1
       D = evalin('base','D(1,:,1)');
         Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
    end
     if handles.CB_D2.Value ==1
       D = evalin('base','D(2,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;    
        concatenado = [concatenado;D];
     end
     if handles.CB_D3.Value ==1
       D = evalin('base','D(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
     if handles.CB_D4.Value ==1
       D = evalin('base','D(4,:,1)');
        Contador = Contador + 1;
        Suma = Suma + D;     
        concatenado = [concatenado;D];
     end
     if handles.CB_D5.Value ==1
       D = evalin('base','D(5,:,1)');
        Contador = Contador + 1;
        Suma = Suma + D;   
        concatenado = [concatenado;D];
     end
     if handles.CB_D6.Value ==1
       D = evalin('base','D(6,:,1)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D7.Value ==1
       D = evalin('base','D(7,:,1)');
        Contador = Contador + 1;
        Suma = Suma + D;   
        concatenado = [concatenado;D];
     end
     if handles.CB_D8.Value ==1
       D = evalin('base','D(8,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
          if handles.CB_D9.Value ==1
       D = evalin('base','D(9,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D10.Value ==1
       D = evalin('base','D(10,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D11.Value ==1
       D = evalin('base','D(11,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D12.Value ==1
       D = evalin('base','D(12,:,1)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VE
      if handles.CB_E1.Value ==1
       E = evalin('base','E(1,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
    end
     if handles.CB_E2.Value ==1
       E = evalin('base','E(2,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;   
         concatenado = [concatenado;E];
     end
     if handles.CB_E3.Value ==1
       E = evalin('base','E(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end
     if handles.CB_E4.Value ==1
       E = evalin('base','E(4,:,1)');
       Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end
     if handles.CB_E5.Value ==1
       E = evalin('base','E(5,:,1)');
       Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end
     if handles.CB_E6.Value ==1
       E = evalin('base','E(6,:,1)');
       Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end
     if handles.CB_E7.Value ==1
       E = evalin('base','E(7,:,1)');
       Contador = Contador + 1;
        Suma = Suma + E;   
         concatenado = [concatenado;E];
     end
     if handles.CB_E8.Value ==1
       E = evalin('base','E(8,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end
        if handles.CB_E9.Value ==1
       E = evalin('base','E(9,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
        end

        if handles.CB_E10.Value ==1
       E = evalin('base','E(10,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
        end

        if handles.CB_E11.Value ==1
       E = evalin('base','E(11,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
        end

        if handles.CB_E12.Value ==1
       E = evalin('base','E(12,:,1)');
        Contador = Contador + 1;
        Suma = Suma + E;  
         concatenado = [concatenado;E];
     end


     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VF
      if handles.CB_F1.Value ==1
       F = evalin('base','F(1,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;  
         concatenado = [concatenado;F];
    end
     if handles.CB_F2.Value ==1
       F = evalin('base','F(2,:,1)');
      Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F3.Value ==1
       F = evalin('base','F(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
     if handles.CB_F4.Value ==1
       F = evalin('base','F(4,:,1)');
        Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
     end
     if handles.CB_F5.Value ==1
       F = evalin('base','F(5,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F6.Value ==1
       F = evalin('base','F(6,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F7.Value ==1
       F = evalin('base','F(7,:,1)');
      Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
     if handles.CB_F8.Value ==1
       F = evalin('base','F(8,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
     end
      if handles.CB_F9.Value ==1
       F = evalin('base','F(9,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
      end
      if handles.CB_F10.Value ==1
       F = evalin('base','F(10,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
      end
      if handles.CB_F11.Value ==1
       F = evalin('base','F(11,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
      end
      if handles.CB_F12.Value ==1
       F = evalin('base','F(12,:,1)');
       Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
      end
     
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VG
      if handles.CB_G1.Value ==1
       G = evalin('base','G(1,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;  
         concatenado = [concatenado;G];
    end
     if handles.CB_G2.Value ==1
       G = evalin('base','G(2,:,1)');
      Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G3.Value ==1
       G = evalin('base','G(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G4.Value ==1
       G = evalin('base','G(4,:,1)');
        Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
     if handles.CB_G5.Value ==1
       G = evalin('base','G(5,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G6.Value ==1
       G = evalin('base','G(6,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G7.Value ==1
       G = evalin('base','G(7,:,1)');
      Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G8.Value ==1
       G = evalin('base','G(8,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
      if handles.CB_G9.Value ==1
       G = evalin('base','G(9,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G10.Value ==1
       G = evalin('base','G(10,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G11.Value ==1
       G = evalin('base','G(11,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G12.Value ==1
       G = evalin('base','G(12,:,1)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
     
           %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VH
      if handles.CB_H1.Value ==1
       H = evalin('base','H(1,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;  
         concatenado = [concatenado;H];
    end
     if handles.CB_H2.Value ==1
       H = evalin('base','H(2,:,1)');
      Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H3.Value ==1
       H = evalin('base','H(3,:,1)');
        Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H4.Value ==1
       H = evalin('base','H(4,:,1)');
        Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
     if handles.CB_H5.Value ==1
       H = evalin('base','H(5,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H6.Value ==1
       H = evalin('base','H(6,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H7.Value ==1
       H = evalin('base','H(7,:,1)');
      Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H8.Value ==1
       H = evalin('base','H(8,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
      if handles.CB_H9.Value ==1
       H = evalin('base','H(9,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H10.Value ==1
       H = evalin('base','H(10,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H11.Value ==1
       H = evalin('base','H(11,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H12.Value ==1
       H = evalin('base','H(12,:,1)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro2
if handles.RB_Filtro2.Value == 1
    if handles.CB_A1.Value ==1
       A = evalin('base','A(1,:,2)');
     Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
    end
     if handles.CB_A2.Value ==1
       A = evalin('base','A(2,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     if handles.CB_A3.Value ==1
       A = evalin('base','A(3,:,2)');
       Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
     end
     if handles.CB_A4.Value ==1
       A = evalin('base','A(4,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
     end
     if handles.CB_A5.Value ==1
       A = evalin('base','A(5,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
     end
     if handles.CB_A6.Value ==1
       A = evalin('base','A(6,:,2)');
       Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     if handles.CB_A7.Value ==1
       A = evalin('base','A(7,:,2)');
       Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     if handles.CB_A8.Value ==1
       A = evalin('base','A(8,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
          if handles.CB_A9.Value ==1
       A = evalin('base','A(9,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
          end
          if handles.CB_A10.Value ==1
       A = evalin('base','A(10,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
          end
          if handles.CB_A11.Value ==1
       A = evalin('base','A(11,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
          end
          if handles.CB_A12.Value ==1
       A = evalin('base','A(12,:,2)');
        Contador = Contador + 1;
        Suma = Suma + A;  
        concatenado = [concatenado;A];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       B = evalin('base','B(1,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
    end
     if handles.CB_B2.Value ==1
       B = evalin('base','B(2,:,2)');
    Contador = Contador + 1;
        Suma = Suma + B;    
        concatenado = [concatenado;B];
     end
     if handles.CB_B3.Value ==1
       B = evalin('base','B(3,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B;   
        concatenado = [concatenado;B];
     end
     if handles.CB_B4.Value ==1
       B = evalin('base','B(4,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B;   
        concatenado = [concatenado;B];
     end
     if handles.CB_B5.Value ==1
       B = evalin('base','B(5,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B;   
        concatenado = [concatenado;B];
     end
     if handles.CB_B6.Value ==1
       B = evalin('base','B(6,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B;   
        concatenado = [concatenado;B];
     end
     if handles.CB_B7.Value ==1
       B = evalin('base','B(7,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B;    
        concatenado = [concatenado;B];
     end
     if handles.CB_B8.Value ==1
       B = evalin('base','B(8,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
      if handles.CB_B9.Value ==1
       B = evalin('base','B(9,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
      end
      if handles.CB_B10.Value ==1
       B = evalin('base','B(10,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
      end
      if handles.CB_B11.Value ==1
       B = evalin('base','B(11,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
      end
      if handles.CB_B12.Value ==1
       B = evalin('base','B(12,:,2)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       C = evalin('base','C(1,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
    end
     if handles.CB_C2.Value ==1
       C = evalin('base','C(2,:,2)');
      Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
     end
     if handles.CB_C3.Value ==1
       C = evalin('base','C(3,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
     end
     if handles.CB_C4.Value ==1
       C = evalin('base','C(4,:,2)');
      Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
     end
     if handles.CB_C5.Value ==1
       C = evalin('base','C(5,:,2)');
      Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
     if handles.CB_C6.Value ==1
       C = evalin('base','C(6,:,2)');
      Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
     if handles.CB_C7.Value ==1
       C = evalin('base','C(7,:,2)');
      Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
     if handles.CB_C8.Value ==1
       C = evalin('base','C(8,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
       if handles.CB_C9.Value ==1
       C = evalin('base','C(9,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
       end
       if handles.CB_C10.Value ==1
       C = evalin('base','C(10,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
       end
       if handles.CB_C11.Value ==1
       C = evalin('base','C(11,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
       end
       if handles.CB_C12.Value ==1
       C = evalin('base','C(12,:,2)');
       Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       D = evalin('base','D(1,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
    end
     if handles.CB_D2.Value ==1
       D = evalin('base','D(2,:,2)');
         Contador = Contador + 1;
        Suma = Suma + D;   
        concatenado = [concatenado;D];
     end
     if handles.CB_D3.Value ==1
       D = evalin('base','D(3,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D4.Value ==1
       D = evalin('base','D(4,:,2)');
         Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D5.Value ==1
       D = evalin('base','D(5,:,2)');
         Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D6.Value ==1
       D = evalin('base','D(6,:,2)');
      Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
     if handles.CB_D7.Value ==1
       D = evalin('base','D(7,:,2)');
         Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D8.Value ==1
       D = evalin('base','D(8,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
       if handles.CB_D9.Value ==1
       D = evalin('base','D(9,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
       end
       if handles.CB_D10.Value ==1
       D = evalin('base','D(10,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
       end
       if handles.CB_D11.Value ==1
       D = evalin('base','D(11,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
       end
       if handles.CB_D12.Value ==1
       D = evalin('base','D(12,:,2)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       E = evalin('base','E(1,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
    end
     if handles.CB_E2.Value ==1
       E = evalin('base','E(2,:,2)');
       Contador = Contador + 1;
        Suma = Suma + E;   
        concatenado = [concatenado;E];
     end
     if handles.CB_E3.Value ==1
       E = evalin('base','E(3,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E4.Value ==1
       E = evalin('base','E(4,:,2)');
       Contador = Contador + 1;
        Suma = Suma + E;   
        concatenado = [concatenado;E];
     end
     if handles.CB_E5.Value ==1
       E = evalin('base','E(5,:,2)');
        Contador = Contador + 1;
        Suma = Suma + E; 
        concatenado = [concatenado;E];
     end
     if handles.CB_E6.Value ==1
       E = evalin('base','E(6,:,2)');
       Contador = Contador + 1;
        Suma = Suma + E;
        concatenado = [concatenado;E];
     end
     if handles.CB_E7.Value ==1
       E = evalin('base','E(7,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E8.Value ==1
       E = evalin('base','E(8,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
       if handles.CB_E9.Value ==1
       E = evalin('base','E(9,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
       end
       if handles.CB_E10.Value ==1
       E = evalin('base','E(10,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
       end
       if handles.CB_E11.Value ==1
       E = evalin('base','E(11,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
       end
       if handles.CB_E12.Value ==1
       E = evalin('base','E(12,:,2)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       F = evalin('base','F(1,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
    end
     if handles.CB_F2.Value ==1
       F = evalin('base','F(2,:,2)');
        Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F3.Value ==1
       F = evalin('base','F(3,:,2)');
           Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
     end
     if handles.CB_F4.Value ==1
       F = evalin('base','F(4,:,2)');
         Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
     end
     if handles.CB_F5.Value ==1
       F = evalin('base','F(5,:,2)');
       Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F6.Value ==1
       F = evalin('base','F(6,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
     if handles.CB_F7.Value ==1
       F = evalin('base','F(7,:,2)');
         Contador = Contador + 1;
        Suma = Suma + F;   
        concatenado = [concatenado;F];
     end
     if handles.CB_F8.Value ==1
       F = evalin('base','F(8,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
      if handles.CB_F9.Value ==1
       F = evalin('base','F(9,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
      end
      if handles.CB_F10.Value ==1
       F = evalin('base','F(10,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
      end
      if handles.CB_F11.Value ==1
       F = evalin('base','F(11,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
      end
      if handles.CB_F12.Value ==1
       F = evalin('base','F(12,:,2)');
          Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
      end
     
            %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<G
      if handles.CB_G1.Value ==1
       G = evalin('base','G(1,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;  
         concatenado = [concatenado;G];
    end
     if handles.CB_G2.Value ==1
       G = evalin('base','G(2,:,2)');
      Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G3.Value ==1
       G = evalin('base','G(3,:,2)');
        Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G4.Value ==1
       G = evalin('base','G(4,:,2)');
        Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
     if handles.CB_G5.Value ==1
       G = evalin('base','G(5,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G6.Value ==1
       G = evalin('base','G(6,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G7.Value ==1
       G = evalin('base','G(7,:,2)');
      Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G8.Value ==1
       G = evalin('base','G(8,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
      if handles.CB_G9.Value ==1
       G = evalin('base','G(9,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G10.Value ==1
       G = evalin('base','G(10,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G11.Value ==1
       G = evalin('base','G(11,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G12.Value ==1
       G = evalin('base','G(12,:,2)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
     
           %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<H
      if handles.CB_H1.Value ==1
       H = evalin('base','H(1,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;  
         concatenado = [concatenado;H];
    end
     if handles.CB_H2.Value ==1
       H = evalin('base','H(2,:,2)');
      Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H3.Value ==1
       H = evalin('base','H(3,:,2)');
        Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H4.Value ==1
       H = evalin('base','H(4,:,2)');
        Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
     if handles.CB_H5.Value ==1
       H = evalin('base','H(5,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H6.Value ==1
       H = evalin('base','H(6,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H7.Value ==1
       H = evalin('base','H(7,:,2)');
      Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H8.Value ==1
       H = evalin('base','H(8,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
      if handles.CB_H9.Value ==1
       H = evalin('base','H(9,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H10.Value ==1
       H = evalin('base','H(10,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H11.Value ==1
       H = evalin('base','H(11,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H12.Value ==1
       H = evalin('base','H(12,:,2)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
end   
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro3
if handles.RB_Filtro3.Value == 1
    if handles.CB_A1.Value ==1
       A = evalin('base','A(1,:,3)');
           Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
    end
     if handles.CB_A2.Value ==1
       A = evalin('base','A(2,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;    
        concatenado = [concatenado;A];
     end
     if handles.CB_A3.Value ==1
       A = evalin('base','A(3,:,3)');
     Contador = Contador + 1;
        Suma = Suma + A;    
        concatenado = [concatenado;A];
     end
     if handles.CB_A4.Value ==1
       A = evalin('base','A(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A5.Value ==1
       A = evalin('base','A(5,:,3)');
       Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A6.Value ==1
       A = evalin('base','A(6,:,3)');
      Contador = Contador + 1;
        Suma = Suma + A;   
        concatenado = [concatenado;A];
     end
     if handles.CB_A7.Value ==1
       A = evalin('base','A(7,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A; 
        concatenado = [concatenado;A];
     end
     if handles.CB_A8.Value ==1
       A = evalin('base','A(8,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
     end
      if handles.CB_A9.Value ==1
       A = evalin('base','A(9,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
      end
      if handles.CB_A10.Value ==1
       A = evalin('base','A(10,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
      end
      if handles.CB_A11.Value ==1
       A = evalin('base','A(11,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
      end
      if handles.CB_A12.Value ==1
       A = evalin('base','A(12,:,3)');
        Contador = Contador + 1;
        Suma = Suma + A;
        concatenado = [concatenado;A];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       B = evalin('base','B(1,:,3)');
      Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
    end
     if handles.CB_B2.Value ==1
       B = evalin('base','B(2,:,3)');
        Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     if handles.CB_B3.Value ==1
       B = evalin('base','B(3,:,3)');
        Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     if handles.CB_B4.Value ==1
       B = evalin('base','B(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     if handles.CB_B5.Value ==1
       B = evalin('base','B(5,:,3)');
        Contador = Contador + 1;
        Suma = Suma + B;
        concatenado = [concatenado;B];
     end
     if handles.CB_B6.Value ==1
       B = evalin('base','B(6,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B;
        concatenado = [concatenado;B];
     end
     if handles.CB_B7.Value ==1
       B = evalin('base','B(7,:,3)');
      Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     if handles.CB_B8.Value ==1
       B = evalin('base','B(8,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
          if handles.CB_B9.Value ==1
       B = evalin('base','B(9,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
          end
          if handles.CB_B10.Value ==1
       B = evalin('base','B(10,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
          end
          if handles.CB_B11.Value ==1
       B = evalin('base','B(11,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
          end
          if handles.CB_B12.Value ==1
       B = evalin('base','B(12,:,3)');
       Contador = Contador + 1;
        Suma = Suma + B; 
        concatenado = [concatenado;B];
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       C = evalin('base','C(1,:,3)');
       Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
    end
     if handles.CB_C2.Value ==1
       C = evalin('base','C(2,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C; 
        concatenado = [concatenado;C];
     end
     if handles.CB_C3.Value ==1
       C = evalin('base','C(3,:,3)');
       Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C4.Value ==1
       C = evalin('base','C(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C5.Value ==1
       C = evalin('base','C(5,:,3)');
       Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C6.Value ==1
       C = evalin('base','C(6,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;
        concatenado = [concatenado;C];
     end
     if handles.CB_C7.Value ==1
       C = evalin('base','C(7,:,3)');
       Contador = Contador + 1;
        Suma = Suma + C;  
        concatenado = [concatenado;C];
     end
     if handles.CB_C8.Value ==1
       C = evalin('base','C(8,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
     end
        if handles.CB_C9.Value ==1
       C = evalin('base','C(9,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
        end
        if handles.CB_C10.Value ==1
       C = evalin('base','C(10,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
        end
        if handles.CB_C11.Value ==1
       C = evalin('base','C(11,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
        end
        if handles.CB_C12.Value ==1
       C = evalin('base','C(12,:,3)');
        Contador = Contador + 1;
        Suma = Suma + C;   
        concatenado = [concatenado;C];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       D = evalin('base','D(1,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
    end
     if handles.CB_D2.Value ==1
       D = evalin('base','D(2,:,3)');
         Contador = Contador + 1;
        Suma = Suma + D;   
        concatenado = [concatenado;D];
     end
     if handles.CB_D3.Value ==1
       D = evalin('base','D(3,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;   
        concatenado = [concatenado;D];
     end
     if handles.CB_D4.Value ==1
       D = evalin('base','D(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D5.Value ==1
       D = evalin('base','D(5,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D6.Value ==1
       D = evalin('base','D(6,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D; 
        concatenado = [concatenado;D];
     end
     if handles.CB_D7.Value ==1
       D = evalin('base','D(7,:,3)');
       Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
     if handles.CB_D8.Value ==1
       D = evalin('base','D(8,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
          if handles.CB_D9.Value ==1
       D = evalin('base','D(9,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D10.Value ==1
       D = evalin('base','D(10,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D11.Value ==1
       D = evalin('base','D(11,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
          end
          if handles.CB_D12.Value ==1
       D = evalin('base','D(12,:,3)');
        Contador = Contador + 1;
        Suma = Suma + D;  
        concatenado = [concatenado;D];
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       E = evalin('base','E(1,:,3)');
       Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
    end
     if handles.CB_E2.Value ==1
       E = evalin('base','E(2,:,3)');
      Contador = Contador + 1;
        Suma = Suma + E; 
        concatenado = [concatenado;E];
     end
     if handles.CB_E3.Value ==1
       E = evalin('base','E(3,:,3)');
         Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E4.Value ==1
       E = evalin('base','E(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E5.Value ==1
       E = evalin('base','E(5,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E6.Value ==1
       E = evalin('base','E(6,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
     if handles.CB_E7.Value ==1
       E = evalin('base','E(7,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E; 
        concatenado = [concatenado;E];
     end
     if handles.CB_E8.Value ==1
       E = evalin('base','E(8,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end
          if handles.CB_E9.Value ==1
       E = evalin('base','E(9,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
          end
          if handles.CB_E10.Value ==1
       E = evalin('base','E(10,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
          end
          if handles.CB_E11.Value ==1
       E = evalin('base','E(11,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
          end
          if handles.CB_E12.Value ==1
       E = evalin('base','E(12,:,3)');
        Contador = Contador + 1;
        Suma = Suma + E;  
        concatenado = [concatenado;E];
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       F = evalin('base','F(1,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F;   
        concatenado = [concatenado;F];
    end
     if handles.CB_F2.Value ==1
       F = evalin('base','F(2,:,3)');
         Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F3.Value ==1
       F = evalin('base','F(3,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F4.Value ==1
       F = evalin('base','F(4,:,3)');
       Contador = Contador + 1;
        Suma = Suma + F;   
        concatenado = [concatenado;F];
     end
     if handles.CB_F5.Value ==1
       F = evalin('base','F(5,:,3)');
        control = F(5,:); 
        Contador = Contador + 1;
        Suma = Suma + F;
        concatenado = [concatenado;F];
     end
     if handles.CB_F6.Value ==1
       F = evalin('base','F(6,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F;  
        concatenado = [concatenado;F];
     end
     if handles.CB_F7.Value ==1
       F = evalin('base','F(7,:,3)');
         Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
     if handles.CB_F8.Value ==1
       F = evalin('base','F(8,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
          if handles.CB_F9.Value ==1
       F = evalin('base','F(9,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
          end
          if handles.CB_F10.Value ==1
       F = evalin('base','F(10,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
          end
          if handles.CB_F11.Value ==1
       F = evalin('base','F(11,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
          end
          if handles.CB_F12.Value ==1
       F = evalin('base','F(12,:,3)');
        Contador = Contador + 1;
        Suma = Suma + F; 
        concatenado = [concatenado;F];
     end
     
           %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VG
      if handles.CB_G1.Value ==1
       G = evalin('base','G(1,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;  
         concatenado = [concatenado;G];
    end
     if handles.CB_G2.Value ==1
       G = evalin('base','G(2,:,3)');
      Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G3.Value ==1
       G = evalin('base','G(3,:,3)');
        Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G4.Value ==1
       G = evalin('base','G(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
     if handles.CB_G5.Value ==1
       G = evalin('base','G(5,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G6.Value ==1
       G = evalin('base','G(6,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;  
        concatenado = [concatenado;G];
     end
     if handles.CB_G7.Value ==1
       G = evalin('base','G(7,:,3)');
      Contador = Contador + 1;
        Suma = Suma + G; 
        concatenado = [concatenado;G];
     end
     if handles.CB_G8.Value ==1
       G = evalin('base','G(8,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
     end
      if handles.CB_G9.Value ==1
       G = evalin('base','G(9,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G10.Value ==1
       G = evalin('base','G(10,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G11.Value ==1
       G = evalin('base','G(11,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
      if handles.CB_G12.Value ==1
       G = evalin('base','G(12,:,3)');
       Contador = Contador + 1;
        Suma = Suma + G;
        concatenado = [concatenado;G];
      end
     
           %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VH
      if handles.CB_H1.Value ==1
       H = evalin('base','H(1,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;  
         concatenado = [concatenado;H];
    end
     if handles.CB_H2.Value ==1
       H = evalin('base','H(2,:,3)');
      Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H3.Value ==1
       H = evalin('base','H(3,:,3)');
        Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H4.Value ==1
       H = evalin('base','H(4,:,3)');
        Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
     if handles.CB_H5.Value ==1
       H = evalin('base','H(5,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H6.Value ==1
       H = evalin('base','H(6,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;  
        concatenado = [concatenado;H];
     end
     if handles.CB_H7.Value ==1
       H = evalin('base','H(7,:,3)');
      Contador = Contador + 1;
        Suma = Suma + H; 
        concatenado = [concatenado;H];
     end
     if handles.CB_H8.Value ==1
       H = evalin('base','H(8,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
      if handles.CB_H9.Value ==1
       H = evalin('base','H(9,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H10.Value ==1
       H = evalin('base','H(10,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H11.Value ==1
       H = evalin('base','H(11,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
      end
      if handles.CB_H12.Value ==1
       H = evalin('base','H(12,:,3)');
       Contador = Contador + 1;
        Suma = Suma + H;
        concatenado = [concatenado;H];
     end
end

tem = evalin('base','tem');
control = evalin('base','control'); 
Promedio = (Suma/Contador);
resta = Promedio-control;
Derivada = diff(resta);
figure
Derivada= [Derivada(1,1) Derivada];
plot(tem,Derivada)
[min,Tm] = max(Derivada);
Tm = Tm+25;
assignin('base','Tm',Tm); 
SD = std(concatenado);
error = SD/(sqrt(Contador));
figure
hold on
plot(tem,resta,'r')
errorbar(tem,resta,error,'k')
hold off

 

% --- Executes on button press in PB_Control1.
function PB_Control1_Callback(hObject, eventdata, handles)
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<ROX
evalin( 'base', 'clearvars control' )
clear control 
if handles.RB_ROX.Value == 1
    if handles.CB_A1.Value ==1
       control = evalin('base','RA(1,:)');
          
    end
     if handles.CB_A2.Value ==1
       control = evalin('base','RA(2,:)');
         
     end
     if handles.CB_A3.Value ==1
       control = evalin('base','RA(3,:)');
        
     end
     if handles.CB_A4.Value ==1
       control = evalin('base','RA(4,:)');
        
     end
     if handles.CB_A5.Value ==1
       control = evalin('base','RA(5,:)');
          
     end
     if handles.CB_A6.Value ==1
       control = evalin('base','RA(6,:)');
         
     end
     if handles.CB_A7.Value ==1
      control = evalin('base','RA(7,:)');
         
     end
     if handles.CB_A8.Value ==1
       control = evalin('base','RA(8,:)');
          
     end
          if handles.CB_A9.Value ==1
       control = evalin('base','RA(9,:)');
        
          end
          if handles.CB_A10.Value ==1
       control = evalin('base','RA(10,:)');
          
          end
          if handles.CB_A11.Value ==1
       control = evalin('base','RA(11,:)');
       
          end
          if handles.CB_A12.Value ==1
      control = evalin('base','RA(12,:)');
          
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
      control = evalin('base','RB(1,:)');
          
    end
     if handles.CB_B2.Value ==1
       control= evalin('base','RB(2,:)');
       
     end
     if handles.CB_B3.Value ==1
       control= evalin('base','RB(3,:)');
       
     end
     if handles.CB_B4.Value ==1
       control = evalin('base','RB(4,:)');
       
     end
     if handles.CB_B5.Value ==1
       control = evalin('base','RB(5,:)');
         
     end
     if handles.CB_B6.Value ==1
       control = evalin('base','RB(6,:)');
          
     end
     if handles.CB_B7.Value ==1
       control = evalin('base','RB(7,:)');
         
     end
     if handles.CB_B8.Value ==1
       control = evalin('base','RB(8,:)');
          
     end
          if handles.CB_B9.Value ==1
       control = evalin('base','RB(9,:)');
         
          end
          if handles.CB_B10.Value ==1
      control = evalin('base','RB(10,:)');
        
          end
          if handles.CB_B11.Value ==1
       control = evalin('base','RB(11,:)');
         
          end
          if handles.CB_B12.Value ==1
       control = evalin('base','RB(12,:)');
         
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       control = evalin('base','RC(1,:)');
          
    end
     if handles.CB_C2.Value ==1
       control = evalin('base','RC(2,:)');
        
     end
     if handles.CB_C3.Value ==1
       control = evalin('base','RC(3,:)');
         
     end
     if handles.CB_C4.Value ==1
       control = evalin('base','RC(4,:)');
          
     end
     if handles.CB_C5.Value ==1
       control = evalin('base','RC(5,:)');
         
     end
     if handles.CB_C6.Value ==1
       control = evalin('base','RC(6,:)');
       
     end
     if handles.CB_C7.Value ==1
      control = evalin('base','RC(7,:)');
         
     end
     if handles.CB_C8.Value ==1
       control = evalin('base','RC(8,:)');
       
     end
          if handles.CB_C9.Value ==1
       control = evalin('base','RC(9,:)');
      
          end
          if handles.CB_C10.Value ==1
      control = evalin('base','RC(10,:)');
         
          end
          if handles.CB_C11.Value ==1
       control = evalin('base','RC(11,:)');
         
          end
          if handles.CB_C12.Value ==1
       control = evalin('base','RC(12,:)');
         
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
      control = evalin('base','RD(1,:)');
          
    end
     if handles.CB_D2.Value ==1
       control = evalin('base','RD(2,:)');
         
     end
     if handles.CB_D3.Value ==1
       control = evalin('base','RD(3,:)');
        
     end
     if handles.CB_D4.Value ==1
       control = evalin('base','RD(4,:)');
         
     end
     if handles.CB_D5.Value ==1
     control = evalin('base','RD(5,:)');
          
     end
     if handles.CB_D6.Value ==1
       control = evalin('base','RD(6,:)');
       
     end
     if handles.CB_D7.Value ==1
       control = evalin('base','RD(7,:)');
        
     end
     if handles.CB_D8.Value ==1
      control = evalin('base','RD(8,:)');
         
     end
        if handles.CB_D9.Value ==1
      control = evalin('base','RD(9,:)');
         
        end
        if handles.CB_D10.Value ==1
       control = evalin('base','RD(10,:)');
        
        end
        if handles.CB_D11.Value ==1
       control = evalin('base','RD(11,:)');
          
        end
        if handles.CB_D12.Value ==1
       control = evalin('base','RD(12,:)');
         
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       control = evalin('base','RE(1,:)');
         
    end
     if handles.CB_E2.Value ==1
       control = evalin('base','RE(2,:)');
         
     end
     if handles.CB_E3.Value ==1
       control = evalin('base','RE(3,:)');
          
     end
     if handles.CB_E4.Value ==1
       control = evalin('base','RE(4,:)');
        
     end
     if handles.CB_E5.Value ==1
       control = evalin('base','RE(5,:)');
        
     end
     if handles.CB_E6.Value ==1
       control = evalin('base','RE(6,:)');
          
     end
     if handles.CB_E7.Value ==1
       control = evalin('base','RE(7,:)');
         
     end
     if handles.CB_E8.Value ==1
      control = evalin('base','RE(8,:)');
        
     end
          if handles.CB_E9.Value ==1
       control = evalin('base','RE(9,:)');
        
          end
          if handles.CB_E10.Value ==1
       control = evalin('base','RE(10,:)');
        
          end
          if handles.CB_E11.Value ==1
      control = evalin('base','RE(11,:)');
      
          end
          if handles.CB_E12.Value ==1
       control = evalin('base','RE(12,:)');
          
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       control = evalin('base','RF(1,:)');
        
    end
     if handles.CB_F2.Value ==1
       control = evalin('base','RF(2,:)');
       
     end
     if handles.CB_F3.Value ==1
       control = evalin('base','RF(3,:)');
        
     end
     if handles.CB_F4.Value ==1
       control = evalin('base','RF(4,:)');
         
     end
     if handles.CB_F5.Value ==1
       control = evalin('base','RF(5,:)');
         
     end
     if handles.CB_F6.Value ==1
       control = evalin('base','RF(6,:)');
        
     end
     if handles.CB_F7.Value ==1
       control = evalin('base','RF(7,:)');
         
     end
     if handles.CB_F8.Value ==1
       control = evalin('base','RF(8,:)');
        
     end
         if handles.CB_F9.Value ==1
       control = evalin('base','RF(9,:)');
        
         end
         if handles.CB_F10.Value ==1
       control = evalin('base','RF(10,:)');
         
         end
         if handles.CB_F11.Value ==1
      control = evalin('base','RF(11,:)');
        
         end
         if handles.CB_F12.Value ==1
      control = evalin('base','RF(12,:)');
          
         end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_H1.Value ==1
      control = evalin('base','RH(1,:)');
       
    end
     if handles.CB_H2.Value ==1
       control= evalin('base','RH(2,:)');
      
     end
     if handles.CB_H3.Value ==1
       control= evalin('base','RH(3,:)');
         
     end
     if handles.CB_H4.Value ==1
       control = evalin('base','RH(4,:)');
         
     end
     if handles.CB_H5.Value ==1
       control = evalin('base','RH(5,:)');
       
     end
     if handles.CB_H6.Value ==1
       control = evalin('base','RH(6,:)');
       
     end
     if handles.CB_H7.Value ==1
       control = evalin('base','RH(7,:)');
       
     end
     if handles.CB_H8.Value ==1
       control = evalin('base','RH(8,:)');
        
     end
         if handles.CB_H9.Value ==1
       control= evalin('base','RH(9,:)');
         
         end
         if handles.CB_H10.Value ==1
       control = evalin('base','RH(10,:)');
          
         end
         if handles.CB_H11.Value ==1
       control = evalin('base','RH(11,:)');
       
         end
         if handles.CB_H12.Value ==1
       control = evalin('base','RH(12,:)');
         
         end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_G1.Value ==1
       control = evalin('base','RG(1,:)');
        
    end
     if handles.CB_G2.Value ==1
       control = evalin('base','RG(2,:)');
        
     end
     if handles.CB_G3.Value ==1
       control = evalin('base','RG(3,:)');
        
     end
     if handles.CB_G4.Value ==1
      control = evalin('base','RG(4,:)');
       
     end
     if handles.CB_G5.Value ==1
       RG = evalin('base','RG(5,:)');
         
     end
     if handles.CB_G6.Value ==1
       control = evalin('base','RG(6,:)');
          
     end
     if handles.CB_G7.Value ==1
       control = evalin('base','RG(7,:)');
         
     end
     if handles.CB_G8.Value ==1
       control = evalin('base','RG(8,:)');
         
     end
         if handles.CB_G9.Value ==1
       control = evalin('base','RG(9,:)');
         
         end
         if handles.CB_G10.Value ==1
       control = evalin('base','RG(10,:)');
         
         end
         if handles.CB_G11.Value ==1
      control = evalin('base','RG(11,:)');
          
         end
         if handles.CB_G12.Value ==1
       control = evalin('base','RG(12,:)');
          
     end
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<VIC
if handles.RB_VIC.Value == 1
    if handles.CB_A1.Value ==1
       control = evalin('base','VA(1,:)');
         
    end
     if handles.CB_A2.Value ==1
       control = evalin('base','VA(2,:)');
          
     end
     if handles.CB_A3.Value ==1
       control = evalin('base','VA(3,:)');
      
     end
     if handles.CB_A4.Value ==1
       control = evalin('base','VA(4,:)');
       
     end
     if handles.CB_A5.Value ==1
      control = evalin('base','VA(5,:)');
       
     end
     if handles.CB_A6.Value ==1
      control = evalin('base','VA(6,:)');
        
     end
     if handles.CB_A7.Value ==1
       control = evalin('base','VA(7,:)');
        
     end
     if handles.CB_A8.Value ==1
      control = evalin('base','VA(8,:)');
    
     end
          if handles.CB_A9.Value ==1
      control = evalin('base','VA(9,:)');
         
          end
          if handles.CB_A10.Value ==1
       control = evalin('base','VA(10,:)');
      
          end
          if handles.CB_A11.Value ==1
      control = evalin('base','VA(11,:)');
        
          end
          if handles.CB_A12.Value ==1
       control = evalin('base','VA(12,:)');
         
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       control = evalin('base','VB(1,:)');
         
    end
     if handles.CB_B2.Value ==1
      control = evalin('base','VB(2,:)');
        
     end
     if handles.CB_B3.Value ==1
       control = evalin('base','VB(3,:)');
       
     end
     if handles.CB_B4.Value ==1
      control = evalin('base','VB(4,:)');
        
     end
     if handles.CB_B5.Value ==1
       control = evalin('base','VB(5,:)');
          
     end
     if handles.CB_B6.Value ==1
       control = evalin('base','VB(6,:)');
       
     end
     if handles.CB_B7.Value ==1
       control = evalin('base','VB(7,:)');
        
     end
     if handles.CB_B8.Value ==1
      control = evalin('base','VB(8,:)');
          
     end
          if handles.CB_B9.Value ==1
      control = evalin('base','VB(9,:)');
          
          end
          if handles.CB_B10.Value ==1
       control = evalin('base','VB(10,:)');
        
          end
       if handles.CB_B11.Value ==1
       control = evalin('base','VB(11,:)');
        
          end
          if handles.CB_B12.Value ==1
       control = evalin('base','VB(12,:)');
        
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       control = evalin('base','VC(1,:)');
       
    end
     if handles.CB_C2.Value ==1
       control = evalin('base','VC(2,:)');
      
     end
     if handles.CB_C3.Value ==1
       control = evalin('base','VC(3,:)');
         
     end
     if handles.CB_C4.Value ==1
       control = evalin('base','VC(4,:)');
         
     end
     if handles.CB_C5.Value ==1
      control = evalin('base','VC(5,:)');
        
     end
     if handles.CB_C6.Value ==1
       control = evalin('base','VC(6,:)');
         
     end
     if handles.CB_C7.Value ==1
      control = evalin('base','VC(7,:)');
       
     end
     if handles.CB_C8.Value ==1
       control = evalin('base','VC(8,:)');
         
     end
         if handles.CB_C9.Value ==1
       control = evalin('base','VC(9,:)');
        
         end
         if handles.CB_C10.Value ==1
       control = evalin('base','VC(10,:)');
        
         end
         if handles.CB_C11.Value ==1
       control = evalin('base','VC(11,:)');
          
         end
         if handles.CB_C12.Value ==1
       control = evalin('base','VC(12,:)');
        
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
      control = evalin('base','VD(1,:)');
      
    end
     if handles.CB_D2.Value ==1
       control = evalin('base','VD(2,:)');
      
     end
     if handles.CB_D3.Value ==1
       control = evalin('base','VD(3,:)');
        
     end
     if handles.CB_D4.Value ==1
       control = evalin('base','VD(4,:)');
         
     end
     if handles.CB_D5.Value ==1
       control = evalin('base','VD(5,:)');
      
     end
     if handles.CB_D6.Value ==1
       control = evalin('base','VD(6,:)');
     
     end
     if handles.CB_D7.Value ==1
       control = evalin('base','VD(7,:)');
        
     end
     if handles.CB_D8.Value ==1
       control = evalin('base','VD(8,:)');
       
     end
          if handles.CB_D9.Value ==1
      control = evalin('base','VD(9,:)');
        
          end
          if handles.CB_D10.Value ==1
       control = evalin('base','VD(10,:)');
      
          end
          if handles.CB_D11.Value ==1
      control = evalin('base','VD(11,:)');
      
          end
          if handles.CB_D12.Value ==1
       control = evalin('base','VD(12,:)');
          
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       control = evalin('base','VE(1,:)');
         
    end
     if handles.CB_E2.Value ==1
       control = evalin('base','VE(2,:)');
         
     end
     if handles.CB_E3.Value ==1
       control = evalin('base','VE(3,:)');
        
     end
     if handles.CB_E4.Value ==1
       control = evalin('base','VE(4,:)');
        
     end
     if handles.CB_E5.Value ==1
      control = evalin('base','VE(5,:)');
        
     end
     if handles.CB_E6.Value ==1
       control = evalin('base','RE(6,:)');
      
     end
     if handles.CB_E7.Value ==1
       control = evalin('base','VE(7,:)');
       
     end
     if handles.CB_E8.Value ==1
       control = evalin('base','VE(8,:)');
       
     end
     if handles.CB_E9.Value ==1
       control = evalin('base','VE(9,:)');
        
     end
          if handles.CB_E10.Value ==1
       control = evalin('base','VE(10,:)');
        
          end
          if handles.CB_E11.Value ==1
      control = evalin('base','VE(11,:)');
         
          end
          if handles.CB_E12.Value ==1
       control = evalin('base','VE(12,:)');
         
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       control = evalin('base','VF(1,:)');
      
    end
     if handles.CB_F2.Value ==1
       control = evalin('base','VF(2,:)');
       
     end
     if handles.CB_F3.Value ==1
       control = evalin('base','VF(3,:)');
      
     end
     if handles.CB_F4.Value ==1
       control = evalin('base','VF(4,:)');
       
     end
     if handles.CB_F5.Value ==1
       control = evalin('base','VF(5,:)');
        
     end
     if handles.CB_F6.Value ==1
       control = evalin('base','VF(6,:)');
      
     end
     if handles.CB_F7.Value ==1
       control = evalin('base','VF(7,:)');
         
     end
     if handles.CB_F8.Value ==1
       control = evalin('base','VF(8,:)');
       
     end
          if handles.CB_F9.Value ==1
       control = evalin('base','VF(9,:)');
       
          end
          if handles.CB_F10.Value ==1
       control = evalin('base','VF(10,:)');
       
          end
          if handles.CB_F11.Value ==1
       control = evalin('base','VF(11,:)');
       
          end
          if handles.CB_F12.Value ==1
       control = evalin('base','VF(12,:)');
       
          end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_G1.Value ==1
       control = evalin('base','VG(1,:)');
      
    end
     if handles.CB_G2.Value ==1
       control = evalin('base','VG(2,:)');
       
     end
     if handles.CB_G3.Value ==1
       control = evalin('base','VG(3,:)');
      
     end
     if handles.CB_G4.Value ==1
       control = evalin('base','VG(4,:)');
       
     end
     if handles.CB_G5.Value ==1
       control = evalin('base','VG(5,:)');
        
     end
     if handles.CB_G6.Value ==1
       control = evalin('base','VG(6,:)');
      
     end
     if handles.CB_G7.Value ==1
       control = evalin('base','VG(7,:)');
         
     end
     if handles.CB_G8.Value ==1
       control = evalin('base','VG(8,:)');
       
     end
          if handles.CB_G9.Value ==1
       control = evalin('base','VG(9,:)');
       
          end
          if handles.CB_G10.Value ==1
       control = evalin('base','VG(10,:)');
       
          end
          if handles.CB_G11.Value ==1
       control = evalin('base','VG(11,:)');
       
          end
          if handles.CB_G12.Value ==1
       control = evalin('base','VG(12,:)');
       
          end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_H1.Value ==1
       control = evalin('base','VH(1,:)');
      
    end
     if handles.CB_H2.Value ==1
       control = evalin('base','VH(2,:)');
       
     end
     if handles.CB_H3.Value ==1
       control = evalin('base','VH(3,:)');
      
     end
     if handles.CB_H4.Value ==1
       control = evalin('base','VH(4,:)');
       
     end
     if handles.CB_H5.Value ==1
       control = evalin('base','VH(5,:)');
        
     end
     if handles.CB_H6.Value ==1
       control = evalin('base','VH(6,:)');
      
     end
     if handles.CB_H7.Value ==1
       control = evalin('base','VH(7,:)');
         
     end
     if handles.CB_H8.Value ==1
       control = evalin('base','VH(8,:)');
       
     end
          if handles.CB_H9.Value ==1
       control = evalin('base','VH(9,:)');
       
          end
          if handles.CB_H10.Value ==1
       control = evalin('base','VH(10,:)');
       
          end
          if handles.CB_H11.Value ==1
       control = evalin('base','VH(11,:)');
       
          end
       if handles.CB_H12.Value ==1
       control = evalin('base','VH(12,:)');
        end
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>    
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro1
if handles.RB_Filtro1.Value == 1
    if handles.CB_A1.Value ==1
       control = evalin('base','A(1,:,1)');
       
    end
     if handles.CB_A2.Value ==1
       control = evalin('base','A(2,:,1)');
    
     end
     if handles.CB_A3.Value ==1
       control = evalin('base','A(3,:,1)');
      
     end
     if handles.CB_A4.Value ==1
       control = evalin('base','A(4,:,1)');
      
     end
     if handles.CB_A5.Value ==1
       control = evalin('base','A(5,:,1)');
        
     end
     if handles.CB_A6.Value ==1
       control = evalin('base','A(6,:,1)');
       
     end
     if handles.CB_A7.Value ==1
       control = evalin('base','A(7,:,1)');
      
     end
     if handles.CB_A8.Value ==1
       control = evalin('base','A(8,:,1)');
         
     end
        if handles.CB_A9.Value ==1
       control = evalin('base','A(9,:,1)');
         
        end
        if handles.CB_A10.Value ==1
       control = evalin('base','A(10,:,1)');
         
        end
        if handles.CB_A11.Value ==1
       control = evalin('base','A(11,:,1)');
         
        end
        if handles.CB_A12.Value ==1
       control = evalin('base','A(12,:,1)');
         
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       control = evalin('base','B(1,:,1)');
      
    end
     if handles.CB_B2.Value ==1
      control = evalin('base','B(2,:,1)');
       
     end
     if handles.CB_B3.Value ==1
       control = evalin('base','B(3,:,1)');
        
     end
     if handles.CB_B4.Value ==1
       control = evalin('base','B(4,:,1)');
    
     end
     if handles.CB_B5.Value ==1
       control = evalin('base','B(5,:,1)');
      
     end
     if handles.CB_B6.Value ==1
       control = evalin('base','B(6,:,1)');
        
     end
     if handles.CB_B7.Value ==1
       control = evalin('base','B(7,:,1)');
          
     end
     if handles.CB_B8.Value ==1
       control = evalin('base','B(8,:,1)');
       
     end
        if handles.CB_B9.Value ==1
       control = evalin('base','B(9,:,1)');
       
        end
        if handles.CB_B10.Value ==1
       control = evalin('base','B(10,:,1)');
       
        end
        if handles.CB_B11.Value ==1
       control = evalin('base','B(11,:,1)');
       
        end
        if handles.CB_B12.Value ==1
       control = evalin('base','B(12,:,1)');
       
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       
      if handles.CB_C1.Value ==1
       control = evalin('base','C(1,:,1)');
      
    end
     if handles.CB_C2.Value ==1
       control = evalin('base','C(2,:,1)');
        
     end
     if handles.CB_C3.Value ==1
       control = evalin('base','C(3,:,1)');
        
     end
     if handles.CB_C4.Value ==1
       control = evalin('base','C(4,:,1)');
      
     end
     if handles.CB_C5.Value ==1
       control = evalin('base','C(5,:,1)');
       
     end
     if handles.CB_C6.Value ==1
       control = evalin('base','C(6,:,1)');
        
     end
     if handles.CB_C7.Value ==1
       control = evalin('base','C(7,:,1)');
        
     end
     if handles.CB_C8.Value ==1
       control = evalin('base','C(8,:,1)');
          
     end
        if handles.CB_C9.Value ==1
       control = evalin('base','C(9,:,1)');
          
        end
        if handles.CB_C10.Value ==1
       control = evalin('base','C(10,:,1)');
          
        end
        if handles.CB_C11.Value ==1
       control = evalin('base','C(11,:,1)');
          
        end
        if handles.CB_C12.Value ==1
       control = evalin('base','C(12,:,1)');
          
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       control = evalin('base','D(1,:,1)');
        
    end
     if handles.CB_D2.Value ==1
       control = evalin('base','D(2,:,1)');
       
     end
     if handles.CB_D3.Value ==1
       control = evalin('base','D(3,:,1)');
        
     end
     if handles.CB_D4.Value ==1
       control = evalin('base','D(4,:,1)');
       
     end
     if handles.CB_D5.Value ==1
       control = evalin('base','D(5,:,1)');
        
     end
     if handles.CB_D6.Value ==1
       control = evalin('base','D(6,:,1)');
     
     end
     if handles.CB_D7.Value ==1
       control = evalin('base','D(7,:,1)');
       
     end
     if handles.CB_D8.Value ==1
       control = evalin('base','D(8,:,1)');
        
     end
          if handles.CB_D9.Value ==1
       control = evalin('base','D(9,:,1)');
        
          end
          if handles.CB_D10.Value ==1
       control = evalin('base','D(10,:,1)');
        
          end
          if handles.CB_D11.Value ==1
       control = evalin('base','D(11,:,1)');
        
          end
          if handles.CB_D12.Value ==1
       control = evalin('base','D(12,:,1)');
        
     end
          %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       control = evalin('base','E(1,:,1)');
        
    end
     if handles.CB_E2.Value ==1
       control = evalin('base','E(2,:,1)');
     
     end
     if handles.CB_E3.Value ==1
       control = evalin('base','E(3,:,1)');
     
     end
     if handles.CB_E4.Value ==1
       control = evalin('base','E(4,:,1)');
        
     end
     if handles.CB_E5.Value ==1
       control = evalin('base','E(5,:,1)');
      
     end
     if handles.CB_E6.Value ==1
       control = evalin('base','E(6,:,1)');
         
     end
     if handles.CB_E7.Value ==1
       control = evalin('base','E(7,:,1)');
     
     end
     if handles.CB_E8.Value ==1
       control = evalin('base','E(8,:,1)');
         
     end
        if handles.CB_E9.Value ==1
       control = evalin('base','E(9,:,1)');
         
        end
        if handles.CB_E10.Value ==1
       control = evalin('base','E(10,:,1)');
         
        end
        if handles.CB_E11.Value ==1
       control = evalin('base','E(11,:,1)');
         
        end
        if handles.CB_E12.Value ==1
       control = evalin('base','E(12,:,1)');
         
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       control = evalin('base','F(1,:,1)');
       
    end
     if handles.CB_F2.Value ==1
       control = evalin('base','F(2,:,1)');
          
     end
     if handles.CB_F3.Value ==1
       control = evalin('base','F(3,:,1)');
          
     end
     if handles.CB_F4.Value ==1
       control = evalin('base','F(4,:,1)');
          
     end
     if handles.CB_F5.Value ==1
       control = evalin('base','F(5,:,1)');
        
     end
     if handles.CB_F6.Value ==1
       control = evalin('base','F(6,:,1)');
     end
     if handles.CB_F7.Value ==1
       control = evalin('base','F(7,:,1)');
         
     end
     if handles.CB_F8.Value ==1
       control = evalin('base','F(8,:,1)');
     end
       if handles.CB_F9.Value ==1
       control = evalin('base','F(9,:,1)');
       end
       if handles.CB_F10.Value ==1
       control = evalin('base','F(10,:,1)');
       end
       if handles.CB_F11.Value ==1
       control = evalin('base','F(11,:,1)');
       end
       if handles.CB_F12.Value ==1
       control = evalin('base','F(12,:,1)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_G1.Value ==1
       control = evalin('base','G(1,:,1)');
       
    end
     if handles.CB_G2.Value ==1
       control = evalin('base','G(2,:,1)');
          
     end
     if handles.CB_G3.Value ==1
       control = evalin('base','G(3,:,1)');
          
     end
     if handles.CB_G4.Value ==1
       control = evalin('base','G(4,:,1)');
          
     end
     if handles.CB_G5.Value ==1
       control = evalin('base','G(5,:,1)');
        
     end
     if handles.CB_G6.Value ==1
       control = evalin('base','G(6,:,1)');
     end
     if handles.CB_G7.Value ==1
       control = evalin('base','G(7,:,1)');
         
     end
     if handles.CB_G8.Value ==1
       control = evalin('base','G(8,:,1)');
     end
       if handles.CB_G9.Value ==1
       control = evalin('base','G(9,:,1)');
       end
       if handles.CB_G10.Value ==1
       control = evalin('base','G(10,:,1)');
       end
       if handles.CB_G11.Value ==1
       control = evalin('base','G(11,:,1)');
       end
       if handles.CB_G12.Value ==1
       control = evalin('base','G(12,:,1)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_H1.Value ==1
       control = evalin('base','H(1,:,1)');
       
    end
     if handles.CB_H2.Value ==1
       control = evalin('base','H(2,:,1)');
          
     end
     if handles.CB_H3.Value ==1
       control = evalin('base','H(3,:,1)');
          
     end
     if handles.CB_H4.Value ==1
       control = evalin('base','H(4,:,1)');
          
     end
     if handles.CB_H5.Value ==1
       control = evalin('base','H(5,:,1)');
        
     end
     if handles.CB_H6.Value ==1
       control = evalin('base','H(6,:,1)');
     end
     if handles.CB_H7.Value ==1
       control = evalin('base','H(7,:,1)');
         
     end
     if handles.CB_H8.Value ==1
       control = evalin('base','H(8,:,1)');
     end
       if handles.CB_H9.Value ==1
       control = evalin('base','H(9,:,1)');
       end
       if handles.CB_H10.Value ==1
       control = evalin('base','H(10,:,1)');
       end
       if handles.CB_H11.Value ==1
       control = evalin('base','H(11,:,1)');
       end
       if handles.CB_H12.Value ==1
       control = evalin('base','H(12,:,1)');
      end
end
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro2
if handles.RB_Filtro2.Value == 1
    if handles.CB_A1.Value ==1
       control = evalin('base','A(1,:,2)');
         
    end
     if handles.CB_A2.Value ==1
      control = evalin('base','A(2,:,2)');
          
     end
     if handles.CB_A3.Value ==1
       control = evalin('base','A(3,:,2)');
         
     end
     if handles.CB_A4.Value ==1
      control = evalin('base','A(4,:,2)');
      
     end
     if handles.CB_A5.Value ==1
       control = evalin('base','A(5,:,2)');
          
     end
     if handles.CB_A6.Value ==1
       control = evalin('base','A(6,:,2)');
        
     end
     if handles.CB_A7.Value ==1
       control = evalin('base','A(7,:,2)');
         
     end
     if handles.CB_A8.Value ==1
       control = evalin('base','A(8,:,2)');
          
     end
       if handles.CB_A9.Value ==1
       control = evalin('base','A(9,:,2)');
          
       end
       if handles.CB_A10.Value ==1
       control = evalin('base','A(10,:,2)');
          
       end
       if handles.CB_A11.Value ==1
       control = evalin('base','A(11,:,2)');
          
       end
       if handles.CB_A12.Value ==1
       control = evalin('base','A(12,:,2)');
          
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       control = evalin('base','B(1,:,2)');
        
    end
     if handles.CB_B2.Value ==1
       control = evalin('base','B(2,:,2)');
        
     end
     if handles.CB_B3.Value ==1
       control = evalin('base','B(3,:,2)');
        
     end
     if handles.CB_B4.Value ==1
       control = evalin('base','B(4,:,2)');
        
     end
     if handles.CB_B5.Value ==1
       control = evalin('base','B(5,:,2)');
       
     end
     if handles.CB_B6.Value ==1
       control = evalin('base','B(6,:,2)');
         
     end
     if handles.CB_B7.Value ==1
       control = evalin('base','B(7,:,2)');
          
     end
     if handles.CB_B8.Value ==1
       control = evalin('base','B(8,:,2)');
       
     end
      if handles.CB_B9.Value ==1
       control = evalin('base','B(9,:,2)');
       
      end
      if handles.CB_B10.Value ==1
       control = evalin('base','B(10,:,2)');
       
      end
      if handles.CB_B11.Value ==1
       control = evalin('base','B(11,:,2)');
       
      end
      if handles.CB_B12.Value ==1
       control = evalin('base','B(12,:,2)');
       
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       

      if handles.CB_C1.Value ==1
       control = evalin('base','C(1,:,2)');
      
    end
     if handles.CB_C2.Value ==1
       control = evalin('base','C(2,:,2)');
        
     end
     if handles.CB_C3.Value ==1
       control = evalin('base','C(3,:,2)');
        
     end
     if handles.CB_C4.Value ==1
       control = evalin('base','C(4,:,2)');
      
     end
     if handles.CB_C5.Value ==1
       control = evalin('base','C(5,:,2)');
       
     end
     if handles.CB_C6.Value ==1
       control = evalin('base','C(6,:,2)');
        
     end
     if handles.CB_C7.Value ==1
       control = evalin('base','C(7,:,2)');
        
     end
     if handles.CB_C8.Value ==1
       control = evalin('base','C(8,:,2)');
          
     end
        if handles.CB_C9.Value ==1
       control = evalin('base','C(9,:,2)');
          
        end
        if handles.CB_C10.Value ==1
       control = evalin('base','C(10,:,2)');
          
        end
        if handles.CB_C11.Value ==1
       control = evalin('base','C(11,:,2)');
          
        end
        if handles.CB_C12.Value ==1
       control = evalin('base','C(12,:,2)');
          
     end
        %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       control = evalin('base','D(1,:,2)');
        
    end
     if handles.CB_D2.Value ==1
       control = evalin('base','D(2,:,2)');
       
     end
     if handles.CB_D3.Value ==1
       control = evalin('base','D(3,:,2)');
        
     end
     if handles.CB_D4.Value ==1
       control = evalin('base','D(4,:,2)');
       
     end
     if handles.CB_D5.Value ==1
       control = evalin('base','D(5,:,2)');
        
     end
     if handles.CB_D6.Value ==1
       control = evalin('base','D(6,:,2)');
     
     end
     if handles.CB_D7.Value ==1
       control = evalin('base','D(7,:,2)');
       
     end
     if handles.CB_D8.Value ==1
       control = evalin('base','D(8,:,2)');
        
     end
          if handles.CB_D9.Value ==1
       control = evalin('base','D(9,:,2)');
        
          end
          if handles.CB_D10.Value ==1
       control = evalin('base','D(10,:,2)');
        
          end
          if handles.CB_D11.Value ==1
       control = evalin('base','D(11,:,2)');
        
          end
          if handles.CB_D12.Value ==1
       control = evalin('base','D(12,:,2)');
        
     end
                 %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       control = evalin('base','E(1,:,2)');
        
    end
     if handles.CB_E2.Value ==1
       control = evalin('base','E(2,:,2)');
     
     end
     if handles.CB_E3.Value ==1
       control = evalin('base','E(3,:,2)');
     
     end
     if handles.CB_E4.Value ==1
       control = evalin('base','E(4,:,2)');
        
     end
     if handles.CB_E5.Value ==1
       control = evalin('base','E(5,:,2)');
      
     end
     if handles.CB_E6.Value ==1
       control = evalin('base','E(6,:,2)');
         
     end
     if handles.CB_E7.Value ==1
       control = evalin('base','E(7,:,2)');
     
     end
     if handles.CB_E8.Value ==1
       control = evalin('base','E(8,:,2)');
         
     end
        if handles.CB_E9.Value ==1
       control = evalin('base','E(9,:,2)');
         
        end
        if handles.CB_E10.Value ==1
       control = evalin('base','E(10,:,2)');
         
        end
        if handles.CB_E11.Value ==1
       control = evalin('base','E(11,:,2)');
         
        end
        if handles.CB_E12.Value ==1
       control = evalin('base','E(12,:,2)');
         
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       control = evalin('base','F(1,:,2)');
       
    end
     if handles.CB_F2.Value ==1
       control = evalin('base','F(2,:,2)');
          
     end
     if handles.CB_F3.Value ==1
       control = evalin('base','F(3,:,2)');
          
     end
     if handles.CB_F4.Value ==1
       control = evalin('base','F(4,:,2)');
          
     end
     if handles.CB_F5.Value ==1
       control = evalin('base','F(5,:,2)');
        
     end
     if handles.CB_F6.Value ==1
       control = evalin('base','F(6,:,2)');
     end
     if handles.CB_F7.Value ==1
       control = evalin('base','F(7,:,2)');
         
     end
     if handles.CB_F8.Value ==1
       control = evalin('base','F(8,:,2)');
     end
       if handles.CB_F9.Value ==1
       control = evalin('base','F(9,:,2)');
       end
       if handles.CB_F10.Value ==1
       control = evalin('base','F(10,:,2)');
       end
       if handles.CB_F11.Value ==1
       control = evalin('base','F(11,:,2)');
       end
       if handles.CB_F12.Value ==1
       control = evalin('base','F(12,:,2)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_G1.Value ==1
       control = evalin('base','G(1,:,2)');
       
    end
     if handles.CB_G2.Value ==1
       control = evalin('base','G(2,:,2)');
          
     end
     if handles.CB_G3.Value ==1
       control = evalin('base','G(3,:,2)');
          
     end
     if handles.CB_G4.Value ==1
       control = evalin('base','G(4,:,2)');
          
     end
     if handles.CB_G5.Value ==1
       control = evalin('base','G(5,:,2)');
        
     end
     if handles.CB_G6.Value ==1
       control = evalin('base','G(6,:,2)');
     end
     if handles.CB_G7.Value ==1
       control = evalin('base','G(7,:,2)');
         
     end
     if handles.CB_G8.Value ==1
       control = evalin('base','G(8,:,2)');
     end
       if handles.CB_G9.Value ==1
       control = evalin('base','G(9,:,2)');
       end
       if handles.CB_G10.Value ==1
       control = evalin('base','G(10,:,2)');
       end
       if handles.CB_G11.Value ==1
       control = evalin('base','G(11,:,2)');
       end
       if handles.CB_G12.Value ==1
       control = evalin('base','G(12,:,2)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_H1.Value ==1
       control = evalin('base','H(1,:,2)');
       
    end
     if handles.CB_H2.Value ==1
       control = evalin('base','H(2,:,2)');
          
     end
     if handles.CB_H3.Value ==1
       control = evalin('base','H(3,:,2)');
          
     end
     if handles.CB_H4.Value ==1
       control = evalin('base','H(4,:,2)');
          
     end
     if handles.CB_H5.Value ==1
       control = evalin('base','H(5,:,2)');
        
     end
     if handles.CB_H6.Value ==1
       control = evalin('base','H(6,:,2)');
     end
     if handles.CB_H7.Value ==1
       control = evalin('base','H(7,:,2)');
         
     end
     if handles.CB_H8.Value ==1
       control = evalin('base','H(8,:,2)');
     end
       if handles.CB_H9.Value ==1
       control = evalin('base','H(9,:,2)');
       end
       if handles.CB_H10.Value ==1
       control = evalin('base','H(10,:,2)');
       end
       if handles.CB_H11.Value ==1
       control = evalin('base','H(11,:,2)');
       end
       if handles.CB_H12.Value ==1
       control = evalin('base','H(12,:,2)');
      end
end   
%>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
%<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<Filtro3
if handles.RB_Filtro3.Value == 1
    if handles.CB_A1.Value ==1
       control = evalin('base','A(1,:,3)');
         
    end
     if handles.CB_A2.Value ==1
      control = evalin('base','A(2,:,3)');
          
     end
     if handles.CB_A3.Value ==1
       control = evalin('base','A(3,:,3)');
         
     end
     if handles.CB_A4.Value ==1
      control = evalin('base','A(4,:,3)');
      
     end
     if handles.CB_A5.Value ==1
       control = evalin('base','A(5,:,3)');
          
     end
     if handles.CB_A6.Value ==1
       control = evalin('base','A(6,:,3)');
        
     end
     if handles.CB_A7.Value ==1
       control = evalin('base','A(7,:,3)');
         
     end
     if handles.CB_A8.Value ==1
       control = evalin('base','A(8,:,3)');
          
     end
       if handles.CB_A9.Value ==1
       control = evalin('base','A(9,:,3)');
          
       end
       if handles.CB_A10.Value ==1
       control = evalin('base','A(10,:,3)');
          
       end
       if handles.CB_A11.Value ==1
       control = evalin('base','A(11,:,3)');
          
       end
       if handles.CB_A12.Value ==1
       control = evalin('base','A(12,:,3)');
          
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RA
    if handles.CB_B1.Value ==1
       control = evalin('base','B(1,:,3)');
        
    end
     if handles.CB_B2.Value ==1
       control = evalin('base','B(2,:,3)');
        
     end
     if handles.CB_B3.Value ==1
       control = evalin('base','B(3,:,3)');
        
     end
     if handles.CB_B4.Value ==1
       control = evalin('base','B(4,:,3)');
        
     end
     if handles.CB_B5.Value ==1
       control = evalin('base','B(5,:,3)');
       
     end
     if handles.CB_B6.Value ==1
       control = evalin('base','B(6,:,3)');
         
     end
     if handles.CB_B7.Value ==1
       control = evalin('base','B(7,:,3)');
          
     end
     if handles.CB_B8.Value ==1
       control = evalin('base','B(8,:,3)');
       
     end
      if handles.CB_B9.Value ==1
       control = evalin('base','B(9,:,3)');
       
      end
      if handles.CB_B10.Value ==1
       control = evalin('base','B(10,:,3)');
       
      end
      if handles.CB_B11.Value ==1
       control = evalin('base','B(11,:,3)');
       
      end
      if handles.CB_B12.Value ==1
       control = evalin('base','B(12,:,3)');
       
     end
     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RB
       

      if handles.CB_C1.Value ==1
       control = evalin('base','C(1,:,3)');
      
    end
     if handles.CB_C2.Value ==1
       control = evalin('base','C(2,:,3)');
        
     end
     if handles.CB_C3.Value ==1
       control = evalin('base','C(3,:,3)');
        
     end
     if handles.CB_C4.Value ==1
       control = evalin('base','C(4,:,3)');
      
     end
     if handles.CB_C5.Value ==1
       control = evalin('base','C(5,:,3)');
       
     end
     if handles.CB_C6.Value ==1
       control = evalin('base','C(6,:,3)');
        
     end
     if handles.CB_C7.Value ==1
       control = evalin('base','C(7,:,3)');
        
     end
     if handles.CB_C8.Value ==1
       control = evalin('base','C(8,:,3)');
          
     end
        if handles.CB_C9.Value ==1
       control = evalin('base','C(9,:,3)');
          
        end
        if handles.CB_C10.Value ==1
       control = evalin('base','C(10,:,3)');
          
        end
        if handles.CB_C11.Value ==1
       control = evalin('base','C(11,:,3)');
          
        end
        if handles.CB_C12.Value ==1
       control = evalin('base','C(12,:,3)');
          
     end
        %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RC
      if handles.CB_D1.Value ==1
       control = evalin('base','D(1,:,3)');
        
    end
     if handles.CB_D2.Value ==1
       control = evalin('base','D(2,:,3)');
       
     end
     if handles.CB_D3.Value ==1
       control = evalin('base','D(3,:,3)');
        
     end
     if handles.CB_D4.Value ==1
       control = evalin('base','D(4,:,3)');
       
     end
     if handles.CB_D5.Value ==1
       control = evalin('base','D(5,:,3)');
        
     end
     if handles.CB_D6.Value ==1
       control = evalin('base','D(6,:,3)');
     
     end
     if handles.CB_D7.Value ==1
       control = evalin('base','D(7,:,3)');
       
     end
     if handles.CB_D8.Value ==1
       control = evalin('base','D(8,:,3)');
        
     end
          if handles.CB_D9.Value ==1
       control = evalin('base','D(9,:,3)');
        
          end
          if handles.CB_D10.Value ==1
       control = evalin('base','D(10,:,3)');
        
          end
          if handles.CB_D11.Value ==1
       control = evalin('base','D(11,:,3)');
        
          end
          if handles.CB_D12.Value ==1
       control = evalin('base','D(12,:,3)');
        
     end
                 %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RD
      if handles.CB_E1.Value ==1
       control = evalin('base','E(1,:,3)');
        
    end
     if handles.CB_E2.Value ==1
       control = evalin('base','E(2,:,3)');
     
     end
     if handles.CB_E3.Value ==1
       control = evalin('base','E(3,:,3)');
     
     end
     if handles.CB_E4.Value ==1
       control = evalin('base','E(4,:,3)');
        
     end
     if handles.CB_E5.Value ==1
       control = evalin('base','E(5,:,3)');
      
     end
     if handles.CB_E6.Value ==1
       control = evalin('base','E(6,:,3)');
         
     end
     if handles.CB_E7.Value ==1
       control = evalin('base','E(7,:,3)');
     
     end
     if handles.CB_E8.Value ==1
       control = evalin('base','E(8,:,3)');
         
     end
        if handles.CB_E9.Value ==1
       control = evalin('base','E(9,:,3)');
         
        end
        if handles.CB_E10.Value ==1
       control = evalin('base','E(10,:,3)');
         
        end
        if handles.CB_E11.Value ==1
       control = evalin('base','E(11,:,3)');
         
        end
        if handles.CB_E12.Value ==1
       control = evalin('base','E(12,:,3)');
         
     end

     %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_F1.Value ==1
       control = evalin('base','F(1,:,3)');
       
    end
     if handles.CB_F2.Value ==1
       control = evalin('base','F(2,:,3)');
          
     end
     if handles.CB_F3.Value ==1
       control = evalin('base','F(3,:,3)');
          
     end
     if handles.CB_F4.Value ==1
       control = evalin('base','F(4,:,3)');
          
     end
     if handles.CB_F5.Value ==1
       control = evalin('base','F(5,:,3)');
        
     end
     if handles.CB_F6.Value ==1
       control = evalin('base','F(6,:,3)');
     end
     if handles.CB_F7.Value ==1
       control = evalin('base','F(7,:,3)');
         
     end
     if handles.CB_F8.Value ==1
       control = evalin('base','F(8,:,3)');
     end
       if handles.CB_F9.Value ==1
       control = evalin('base','F(9,:,3)');
       end
       if handles.CB_F10.Value ==1
       control = evalin('base','F(10,:,3)');
       end
       if handles.CB_F11.Value ==1
       control = evalin('base','F(11,:,3)');
       end
       if handles.CB_F12.Value ==1
       control = evalin('base','F(12,:,3)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_G1.Value ==1
       control = evalin('base','G(1,:,3)');
       
    end
     if handles.CB_G2.Value ==1
       control = evalin('base','G(2,:,3)');
          
     end
     if handles.CB_G3.Value ==1
       control = evalin('base','G(3,:,3)');
          
     end
     if handles.CB_G4.Value ==1
       control = evalin('base','G(4,:,3)');
          
     end
     if handles.CB_G5.Value ==1
       control = evalin('base','G(5,:,3)');
        
     end
     if handles.CB_G6.Value ==1
       control = evalin('base','G(6,:,3)');
     end
     if handles.CB_G7.Value ==1
       control = evalin('base','G(7,:,3)');
         
     end
     if handles.CB_G8.Value ==1
       control = evalin('base','G(8,:,3)');
     end
       if handles.CB_G9.Value ==1
       control = evalin('base','G(9,:,3)');
       end
       if handles.CB_G10.Value ==1
       control = evalin('base','G(10,:,3)');
       end
       if handles.CB_G11.Value ==1
       control = evalin('base','G(11,:,3)');
       end
       if handles.CB_G12.Value ==1
       control = evalin('base','G(12,:,3)');
       end
      %<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<RE
      if handles.CB_H1.Value ==1
       control = evalin('base','H(1,:,3)');
       
    end
     if handles.CB_H2.Value ==1
       control = evalin('base','H(2,:,3)');
          
     end
     if handles.CB_H3.Value ==1
       control = evalin('base','H(3,:,3)');
          
     end
     if handles.CB_H4.Value ==1
       control = evalin('base','H(4,:,3)');
          
     end
     if handles.CB_H5.Value ==1
       control = evalin('base','H(5,:,3)');
        
     end
     if handles.CB_H6.Value ==1
       control = evalin('base','H(6,:,3)');
     end
     if handles.CB_H7.Value ==1
       control = evalin('base','H(7,:,3)');
         
     end
     if handles.CB_H8.Value ==1
       control = evalin('base','H(8,:,3)');
     end
       if handles.CB_H9.Value ==1
       control = evalin('base','H(9,:,3)');
       end
       if handles.CB_H10.Value ==1
       control = evalin('base','H(10,:,3)');
       end
       if handles.CB_H11.Value ==1
       control = evalin('base','H(11,:,3)');
       end
       if handles.CB_H12.Value ==1
       control = evalin('base','H(12,:,3)');
      end
end
try
assignin('base','control',control)
end



function ET_pasotem_Callback(hObject, eventdata, handles)
% hObject    handle to ET_pasotem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_pasotem as text
%        str2double(get(hObject,'String')) returns contents of ET_pasotem as a double


% --- Executes during object creation, after setting all properties.
function ET_pasotem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_pasotem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ET_tem_Callback(hObject, eventdata, handles)
% hObject    handle to ET_tem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ET_tem as text
%        str2double(get(hObject,'String')) returns contents of ET_tem as a double


% --- Executes during object creation, after setting all properties.
function ET_tem_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ET_tem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in CB_AUTO.
function CB_AUTO_Callback(hObject, eventdata, handles)
% hObject    handle to CB_AUTO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
if handles.CB_AUTO.Value == 1
    set(handles.ET_tem,'Enable','off')
    set(handles.ET_pasotem,'Enable','off')
else
    set(handles.ET_tem,'Enable','on')
     set(handles.ET_pasotem,'Enable','on')
end
    
% Hint: get(hObject,'Value') returns toggle state of CB_AUTO


% --- Executes during object creation, after setting all properties.
function panel_setup_CreateFcn(hObject, eventdata, handles)
% hObject    handle to panel_setup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on button press in RB_48p.
function RB_48p_Callback(hObject, eventdata, handles)
 set(handles.RB_96p,'Value',0)
   



% --- Executes on button press in RB_96p.
function RB_96p_Callback(hObject, eventdata, handles)
set(handles.RB_48p,'Value',0)


% --------------------------------------------------------------------
function EXP_Callback(hObject, eventdata, handles)
% hObject    handle to EXP (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function EXP_CSV_Callback(hObject, eventdata, handles)
selpath = uigetdir();
RA = evalin('base','RA');
RB = evalin('base','RB');
RC = evalin('base','RC');
RD = evalin('base','RD');e
RE = evalin('base','RE');
RF = evalin('base','RF');
RG = evalin('base','RG');
RH = evalin('base','RH');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
VA = evalin('base','VA');
VB = evalin('base','VB');
VC = evalin('base','VC');
VD = evalin('base','VD');
VE = evalin('base','VE');
VF = evalin('base','VF');
VG = evalin('base','VG');
VH = evalin('base','VH');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
A = evalin('base','A');
B = evalin('base','B');
C = evalin('base','C');
D = evalin('base','D');
E = evalin('base','E');
F = evalin('base','F');
G = evalin('base','G');
H = evalin('base','H');
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    if handles.RB_ROX.Value == 1
    
    dlmwrite(fullfile(selpath,'RA.txt'),RA,'delimiter',',')
    dlmwrite(fullfile(selpath,'RB.txt'),RB,'delimiter',',')
    dlmwrite(fullfile(selpath,'RC.txt'),RC,'delimiter',',')
    dlmwrite(fullfile(selpath,'RD.txt'),RD,'delimiter',',')
    dlmwrite(fullfile(selpath,'RE.txt'),RE,'delimiter',',')
    dlmwrite(fullfile(selpath,'RF.txt'),RF,'delimiter',',')
    if handles.RB_96p.Value == 1
    dlmwrite(fullfile(selpath,'RG.txt'),RG,'delimiter',',')
    dlmwrite(fullfile(selpath,'RH.txt'),RH,'delimiter',',')
    end
    
    elseif handles.RB_VIC.Value == 1
    
    dlmwrite(fullfile(selpath,'VA.txt'),VA,'delimiter',',')
    dlmwrite(fullfile(selpath,'VB.txt'),VB,'delimiter',',')
    dlmwrite(fullfile(selpath,'VC.txt'),VC,'delimiter',',')
    dlmwrite(fullfile(selpath,'VD.txt'),VD,'delimiter',',')
    dlmwrite(fullfile(selpath,'VE.txt'),VE,'delimiter',',')
    dlmwrite(fullfile(selpath,'VF.txt'),VF,'delimiter',',')
    if handles.RB_96p.Value == 1
    dlmwrite(fullfile(selpath,'VG.txt'),VG,'delimiter',',')
    dlmwrite(fullfile(selpath,'VH.txt'),VH,'delimiter',',')
    end
    elseif handles.RB_Filtro1.Value == 1
    dlmwrite(fullfile(selpath,'GREENA.txt'),A(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREENB.txt'),B(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREENC.txt'),C(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREEND.txt'),D(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREENE.txt'),E(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREENF.txt'),F(:,:,1),'delimiter',',')
    if handles.RB_96p.Value == 1
    dlmwrite(fullfile(selpath,'GREENG.txt'),G(:,:,1),'delimiter',',')
    dlmwrite(fullfile(selpath,'GREENH.txt'),H(:,:,1),'delimiter',',')
    end
    elseif handles.Filtro2.Value == 1
    dlmwrite(fullfile(selpath,'YELLOWA.txt'),A(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWB.txt'),B(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWC.txt'),C(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWD.txt'),D(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWE.txt'),E(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWF.txt'),F(:,:,2),'delimiter',',')
    if handles.RB_96p.Value == 1
    dlmwrite(fullfile(selpath,'YELLOWG.txt'),G(:,:,2),'delimiter',',')
    dlmwrite(fullfile(selpath,'YELLOWH.txt'),H(:,:,2),'delimiter',',')
    end        
    elseif handles.RB_Filtro3.Value == 1
       dlmwrite(fullfile(selpath,'ORANGEA.txt'),A(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGEB.txt'),B(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGEC.txt'),C(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGED.txt'),D(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGEE.txt'),E(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGEF.txt'),F(:,:,3),'delimiter',',')
    if handles.RB_96p.Value == 1
    dlmwrite(fullfile(selpath,'ORANGEG.txt'),G(:,:,3),'delimiter',',')
    dlmwrite(fullfile(selpath,'ORANGEH.txt'),H(:,:,3),'delimiter',',')
    end
    end
