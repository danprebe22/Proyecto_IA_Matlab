function varargout = inter2(varargin)
% INTER2 MATLAB code for inter2.fig
%      INTER2, by itself, creates a new INTER2 or raises the existing
%      singleton*.
%
%      H = INTER2 returns the handle to a new INTER2 or the handle to
%      the existing singleton*.
%
%      INTER2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in INTER2.M with the given input arguments.
%
%      INTER2('Property','Value',...) creates a new INTER2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before inter2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to inter2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help inter2

% Last Modified by GUIDE v2.5 15-Jun-2018 02:30:03

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @inter2_OpeningFcn, ...
                   'gui_OutputFcn',  @inter2_OutputFcn, ...
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


% --- Executes just before inter2 is made visible.
function inter2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to inter2 (see VARARGIN)

% Choose default command line output for inter2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes inter2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = inter2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in calculaRutabtn.
function calculaRutabtn_Callback(hObject, eventdata, handles)
% hObject    handle to calculaRutabtn (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
estacion=get(handles.destino,'string');
destino=getNumber(estacion)
estacion=get(handles.origen,'string');
origen=getNumber(estacion)
A =ruta();

[tiempo camino]=dijkstra(A,destino,origen);

tam=size(camino)
vect=[1:tam(2)];
for k = 1 : length(camino)
  listboxItems{k} = getName(camino(k));
end

 set(handles.listbox1,'string',listboxItems)    
 set(handles.lee,'string',tiempo)



% --- Executes on selection change in lineaO.
function lineaO_Callback(hObject, eventdata, handles)

% hObject    handle to lineaO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lineaO contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lineaO
val = get(hObject,'Value');
string_list = get(hObject,'String');
source =char(string_list(val));
handles.source = str2num(source);


% --- Executes during object creation, after setting all properties.
function lineaO_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lineaO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object deletion, before destroying properties.
function lineaO_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to lineaO (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on key press with focus on lineaO and none of its controls.
function lineaO_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to lineaO (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)

% -----------------------------termina lineas ORIGEN------------------
% --- Executes on selection change in lineaD.
function lineaD_Callback(hObject, eventdata, handles)
% hObject    handle to lineaD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns lineaD contents as cell array
%        contents{get(hObject,'Value')} returns selected item from lineaD


% --- Executes during object creation, after setting all properties.
function lineaD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lineaD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function origen_Callback(hObject, eventdata, handles)
% hObject    handle to origen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of origen as text
%        str2double(get(hObject,'String')) returns contents of origen as a double


% --- Executes during object creation, after setting all properties.
function origen_CreateFcn(hObject, eventdata, handles)
% hObject    handle to origen (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end






function destino_Callback(hObject, eventdata, handles)
% hObject    handle to destino (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of destino as text
%        str2double(get(hObject,'String')) returns contents of destino as a double


% --- Executes during object creation, after setting all properties.
function destino_CreateFcn(hObject, eventdata, handles)
% hObject    handle to destino (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes during object creation, after setting all properties.
function fondo_CreateFcn(hObject, eventdata, handles)
% hObject    handle to fondo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate fondo

axes(hObject)
imshow('sbw1.jpg')


% --- Executes during object creation, after setting all properties.
function lee_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lee (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called


% --- Executes on selection change in listbox1.
function listbox1_Callback(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns listbox1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from listbox1


% --- Executes during object creation, after setting all properties.
function listbox1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to listbox1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: listbox controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
