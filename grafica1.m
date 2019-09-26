function varargout = grafica1(varargin)
% GRAFICA1 MATLAB code for grafica1.fig
%      GRAFICA1, by itself, creates a new GRAFICA1 or raises the existing
%      singleton*.
%
%      H = GRAFICA1 returns the handle to a new GRAFICA1 or the handle to
%      the existing singleton*.
%
%      GRAFICA1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GRAFICA1.M with the given input arguments.
%
%      GRAFICA1('Property','Value',...) creates a new GRAFICA1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before grafica1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to grafica1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help grafica1

% Last Modified by GUIDE v2.5 26-Sep-2019 09:57:57

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @grafica1_OpeningFcn, ...
                   'gui_OutputFcn',  @grafica1_OutputFcn, ...
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


% --- Executes just before grafica1 is made visible.
function grafica1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to grafica1 (see VARARGIN)

% Choose default command line output for grafica1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes grafica1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = grafica1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function input_amp_Callback(hObject, eventdata, handles)
% hObject    handle to input_amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_amp as text
%        str2double(get(hObject,'String')) returns contents of input_amp as a double
boton_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function input_amp_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_amp (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

function input_frecuencia_Callback(hObject, eventdata, handles)
% hObject    handle to input_frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of input_frecuencia as text
%        str2double(get(hObject,'String')) returns contents of input_frecuencia as a double

boton_Callback(hObject, eventdata, handles)


% --- Executes during object creation, after setting all properties.
function input_frecuencia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to input_frecuencia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


function inputFase_Callback(hObject, eventdata, handles)
% hObject    handle to inputFase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inputFase as text
%        str2double(get(hObject,'String')) returns contents of inputFase as a double
boton_Callback(hObject, eventdata, handles)

% --- Executes during object creation, after setting all properties.
function inputFase_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inputFase (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in boton.
function boton_Callback(hObject, eventdata, handles)
% hObject    handle to boton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
frecuencia = str2num(get(handles.input_frecuencia,'String')); %Recibe la entrada de Frecuencia
amplitud = str2num(get(handles.input_amp,'String'));          %Recibe la entrada de Amplitud
fase = str2num(get(handles.inputFase,'String'));          %Recibe la entrada de Fase
angle = degtorad(fase);%convert radianes
%frecuencia = floor(2+(20)*rand(1,1));%Frecuencia aleaotrio
%amplitud = floor(2+(25)*rand(1,1));%Aplitud aleatorio
%fase = floor(50+(359)*rand(1,1));%Parte entera y número aleatorio
%angle = degtorad(fase);%convert radianes

if isempty(frecuencia) || isempty(amplitud) || isempty(angle) || isempty(frecuencia) && isempty(amplitud) || isempty(amplitud) && isempty(angle) || isempty(amplitud) && isempty(frecuencia)

else
%Conversion a enteros

T = 1/ 10000;
t1 = 0:T:1;
t2 = 1:T:2;

%separar onda real e imaginaria
x = [1 1];
y = [-1*amplitud amplitud];


senal1 = amplitud* sin(2*pi*frecuencia*t1);
senal2 = amplitud*sin((2*pi*frecuencia*t2)+angle);

hold on;
cla

ylabel(handles.axes1,'Amplitud')
xlabel(handles.axes1,'Frecuencia')

plot(t1,senal1);
plot(t2,senal2);

linea=line (x,y);
linea.Marker ='.';
linea.LineWidth = 1;
linea.Color = 'b';
end
