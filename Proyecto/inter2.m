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

% Last Modified by GUIDE v2.5 14-Jun-2018 18:05:43

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
estacionO=get(handles.origen,'string');
switch estacionO
    case 'OBSERVATORIO'
	numO='1';
	
    case 'TACUBAYA'
        numO='2';

    case 'JUANACATLAN'
        numO='3';

    case 'CHAPULTEPEC'
        numO='4';

    case 'SEVILLA'
        numO='5';

    case 'INSURGENTES'
        numO='6';

    case 'CUAUHTEMOC'
        numO='7';

    case 'BALDERAS'
        numO='8';

    case 'SALTO DEL AGUA'
        numO='9';

    case 'ISABEL LA CATOLICA'
        numO='10';

    case 'PINO SUAREZ'
        numO='11';

    case 'MERCED'
        numO='12';

    case 'CANDELARIA'
        numO='13';

    case 'SAN LAZARO'
        numO='14';

    case 'MOCTEZUMA'
        numO='15';

    case 'BALBUENA'
        numO='16';

    case 'BOULEVARD PUERTO AEREO'
        numO='17';

    case 'GOMEZ FARIAS'
        numO='18';

    case 'ZARAGOZA'
        numO='19';

    case 'PANTITLAN'
        numO='20';

    case 'CUATRO CAMINOS'
        numO='21';

    case 'PANTEONES'
        numO='22';

    case 'TACUBA'
        numO='23';

    case 'CUITLAHUAC'
        numO='24';

    case 'POPOTLA'
        numO='25';

    case 'COLEGIO MILITAR'
        numO='26';

    case 'NORMAL'
        numO='27';

    case 'SAN COSME'
        numO='28';

    case 'REVOLUCION'
        numO='29';

    case 'HIDALGO'
        numO='30';

    case 'BELLAS ARTES'
        numO='31';

    case 'ALLENDE'
        numO='32';

    case 'ZOCALO'
        numO='33';

    case 'SAN ANTONIO ABAD'
        numO='34';

    case 'CHABACANO'
        numO='35';

    case 'VIADUCTO'
        numO='36';

    case 'XOLA'
        numO='37';

    case 'VILLA DE CORTES'
        numO='38';

    case 'NATIVITAS'
        numO='39';

    case 'PORTALES'
        numO='40';

    case 'ERMITA'
        numO='41';

    case 'GENERAL ANAYA'
        numO='42';

    case 'TASQUE�A'
        numO='43';

    case 'INDIOS VERDES'
        numO='44';

    case 'DEPORTIVO 18 DE MARZO'
        numO='45';

    case 'POTRERO'
        numO='46';

    case 'LA RAZA'
        numO='47';

    case 'TLATELOLCO'
        numO='48';

    case 'GUERRERO'
        numO='49';

    case 'JUAREZ'
        numO='50';

    case 'NI�OS HEROES'
        numO='51';

    case 'HOSPITAL GENERAL'
        numO='52';

    case 'CENTRO MEDICO'
        numO='53';

    case 'ETIOPIA'
        numO='54';

    case 'EUGENIA'
        numO='55';

    case 'DIVISION DEL NORTE'
        numO='56';

    case 'ZAPATA'
        numO='57';

    case 'COYOACAN'
        numO='58';

    case 'VIVEROS/ DERECHOS HUMANOS'
        numO='59';

    case 'MIGUEL ANGEL DE QUEVEDO'
        numO='60';

    case 'COPILCO'
        numO='61';

    case 'UNIVERSIDAD'
        numO='62';

    case 'MARTIN CARRERA'
        numO='63';

    case 'TALISMAN'
        numO='64';

    case 'BONDOJITO'
        numO='65';

    case 'CONSULADO'
        numO='66';

    case 'CANAL DEL NORTE'
        numO='67';

    case 'MORELOS'
        numO='68';

    case 'FRAY SERVANDO'
        numO='69';

    case 'JAMAICA'
        numO='70';

    case 'SANTA ANITA'
        numO='71';

    case 'HANGARES'
        numO='72';

    case 'TERMINAL AEREA'
        numO='73';

    case 'OCEANIA'
        numO='74';

    case 'ARAGON'
        numO='75';

    case 'EDUARDO MOLINA'
        numO='76';

    case 'VALLE GOMEZ'
        numO='77';

    case 'MISTERIOS'
        numO='78';

    case 'AUTOBUSES DEL NORTE'
        numO='79';

    case 'INSTITUTO DEL PETROLEO'
        numO='80';

    case 'POLITECNICO'
        numO='81';

    case 'EL ROSARIO'
        numO='82';

    case 'TEZOZOMOC'
        numO='83';

    case 'AZCAPOTZALCO'
        numO='84';

    case 'FERRERIA'
        numO='85';

    case 'NORTE 45'
        numO='86';

    case 'VALLEJO'
        numO='87';

    case 'LINDAVISTA'
        numO='88';

    case 'LA VILLA'
        numO='89';

    case 'AQUILES SERD�N'
        numO='90';

    case 'CAMARONES'
        numO='91';

    case 'REFINERIA'
        numO='92';

    case 'SAN JOAQUIN'
        numO='93';

    case 'POLANCO'
        numO='94';

    case 'AUDITORIO'
        numO='95';

    case 'CONSTITUYENTES'
        numO='96';

    case 'SAN PEDRO DE LOS PINOS'
        numO='97';

    case 'SAN ANTONIO'
        numO='98';

    case 'MIXCOAC'
        numO='99';

    case 'BARRANCA DEL MUERTO'
        numO='100';

    case 'SAN JUAN DE LETRAN'
        numO='101';

    case 'DOCTORES'
        numO='102';

    case 'OBRERA'
        numO='103';

    case 'LA VIGA'
        numO='104';

    case 'COYUYA'
        numO='105';

    case 'IZTACALCO'
        numO='106';

    case 'APATLACO'
        numO='107';

    case 'ACULCO'
        numO='108';

    case 'ESCUADRON 201'
        numO='109';

    case 'ATLALILCO'
        numO='110';

    case 'IZTAPALAPA'
        numO='111';

    case 'CERRO DE LA ESTRELLA'
        numO='112';

    case 'UAM-I'
        numO='113';

    case 'CONSTITUCION DE 1917'
        numO='114';

    case 'PATRIOTISMO'
        numO='115';

    case 'CHILPANCINGO'
        numO='116';

    case 'LAZARO CARDENAS'
        numO='117';

    case 'MIXIUHCA'
        numO='118';

    case 'VELODROMO'
        numO='119';

    case 'CIUDAD DEPORTIVA'
        numO='120';

    case 'PUEBLA'
        numO='121';

    case 'AGRICOLA ORIENTAL'
        numO='122';

    case 'CANAL DE SAN JUAN'
        numO='123';

    case 'TEPALCATES'
        numO='124';

    case 'GUELATAO'
        numO='125';

    case 'PE�ON VIEJO'
        numO='126';

    case 'ACATITLA'
        numO='127';

    case 'SANTA MARTA'
        numO='128';

    case 'LOS REYES'
        numO='129';

    case 'LA PAZ'
        numO='130';

    case 'CIUDAD AZTECA'
        numO='131';

    case 'PLAZA ARAGON'
        numO='132';

    case 'OLIMPICA'
        numO='133';

    case 'ECATEPEC'
        numO='134';

    case 'MUZQUIZ'
        numO='135';

    case 'RIO DE LOS REMEDIOS'
        numO='136';

    case 'IMPULSORA'
        numO='137';

    case 'NEZAHUALCOYOTL'
        numO='138';

    case 'VILLA DE ARAGON'
        numO='139';

    case 'BOSQUE DE ARAGON'
        numO='140';

    case 'DEPORTIVO OCEANIA'
        numO='141';

    case 'ROMERO RUBIO'
        numO='142';

    case 'RICARDO FLORES MAGON'
        numO='143';

    case 'TEPITO'
        numO='144';

    case 'LAGUNILLA'
        numO='145';

    case 'GARIBALDI'
        numO='146';

    case 'BUENAVISTA'
        numO='147';

    case 'INSURGENTES SUR'
        numO='148';

    case 'HOSPITAL 20 DE NOVIEMBRE'
        numO='149';

    case 'PARQUE DE LOS VENADOS'
        numO='150';

    case 'EJE CENTRAL'
        numO='151';

    case 'MEXICALTZINGO'
        numO='152';

    case 'CULHUACAN'
        numO='153';

    case 'SAN ANDRES TOMATLAN'
        numO='154';

    case 'LOMAS ESTRELLAS'
        numO='155';

    case 'CALLE 11'
        numO='156';

    case 'PERIFERICO ORIENTE'
        numO='157';

    case 'TEZONCO'
        numO='158';

    case 'OLIVOS'
        numO='159';

    case 'NOPALERA'
        numO='160';

    case 'ZAPOTITLAN'
        numO='161';

    case 'TLALTENCO'
        numO='162';

    case 'TLAHUAC'
        numO='163';


end


estacionD=get(handles.origen,'string');
switch estacionD
    case 'OBSERVATORIO'
	numD='1';
	
    case 'TACUBAYA'
        numD='2';

    case 'JUANACATLAN'
        numD='3';

    case 'CHAPULTEPEC'
        numD='4';

    case 'SEVILLA'
        numD='5';

    case 'INSURGENTES'
        numD='6';

    case 'CUAUHTEMOC'
        numD='7';

    case 'BALDERAS'
        numD='8';

    case 'SALTO DEL AGUA'
        numD='9';

    case 'ISABEL LA CATOLICA'
        numD='10';

    case 'PINO SUAREZ'
        numD='11';

    case 'MERCED'
        numD='12';

    case 'CANDELARIA'
        numD='13';

    case 'SAN LAZARO'
        numD='14';

    case 'MOCTEZUMA'
        numD='15';

    case 'BALBUENA'
        numD='16';

    case 'BOULEVARD PUERTO AEREO'
        numD='17';

    case 'GOMEZ FARIAS'
        numD='18';

    case 'ZARAGOZA'
        numD='19';

    case 'PANTITLAN'
        numD='20';

    case 'CUATRO CAMINOS'
        numD='21';

    case 'PANTEONES'
        numD='22';

    case 'TACUBA'
        numD='23';

    case 'CUITLAHUAC'
        numD='24';

    case 'POPOTLA'
        numD='25';

    case 'COLEGIO MILITAR'
        numD='26';

    case 'NORMAL'
        numD='27';

    case 'SAN COSME'
        numD='28';

    case 'REVOLUCION'
        numD='29';

    case 'HIDALGO'
        numD='30';

    case 'BELLAS ARTES'
        numD='31';

    case 'ALLENDE'
        numD='32';

    case 'ZOCALO'
        numD='33';

    case 'SAN ANTONIO ABAD'
        numD='34';

    case 'CHABACANO'
        numD='35';

    case 'VIADUCTO'
        numD='36';

    case 'XOLA'
        numD='37';

    case 'VILLA DE CORTES'
        numD='38';

    case 'NATIVITAS'
        numD='39';

    case 'PORTALES'
        numD='40';

    case 'ERMITA'
        numD='41';

    case 'GENERAL ANAYA'
        numD='42';

    case 'TASQUE�A'
        numD='43';

    case 'INDIOS VERDES'
        numD='44';

    case 'DEPORTIVO 18 DE MARZO'
        numD='45';

    case 'POTRERO'
        numD='46';

    case 'LA RAZA'
        numD='47';

    case 'TLATELOLCO'
        numD='48';

    case 'GUERRERO'
        numD='49';

    case 'JUAREZ'
        numD='50';

    case 'NI�OS HEROES'
        numD='51';

    case 'HOSPITAL GENERAL'
        numD='52';

    case 'CENTRO MEDICO'
        numD='53';

    case 'ETIOPIA'
        numD='54';

    case 'EUGENIA'
        numD='55';

    case 'DIVISION DEL NORTE'
        numD='56';

    case 'ZAPATA'
        numD='57';

    case 'COYOACAN'
        numD='58';

    case 'VIVEROS/ DERECHOS HUMANOS'
        numD='59';

    case 'MIGUEL ANGEL DE QUEVEDO'
        numD='60';

    case 'COPILCO'
        numD='61';

    case 'UNIVERSIDAD'
        numD='62';

    case 'MARTIN CARRERA'
        numD='63';

    case 'TALISMAN'
        numD='64';

    case 'BONDOJITO'
        numD='65';

    case 'CONSULADO'
        numD='66';

    case 'CANAL DEL NORTE'
        numD='67';

    case 'MORELOS'
        numD='68';

    case 'FRAY SERVANDO'
        numD='69';

    case 'JAMAICA'
        numD='70';

    case 'SANTA ANITA'
        numD='71';

    case 'HANGARES'
        numD='72';

    case 'TERMINAL AEREA'
        numD='73';

    case 'OCEANIA'
        numD='74';

    case 'ARAGON'
        numD='75';

    case 'EDUARDO MOLINA'
        numD='76';

    case 'VALLE GOMEZ'
        numD='77';

    case 'MISTERIOS'
        numD='78';

    case 'AUTOBUSES DEL NORTE'
        numD='79';

    case 'INSTITUTO DEL PETROLEO'
        numD='80';

    case 'POLITECNICO'
        numD='81';

    case 'EL ROSARIO'
        numD='82';

    case 'TEZOZOMOC'
        numD='83';

    case 'AZCAPOTZALCO'
        numD='84';

    case 'FERRERIA'
        numD='85';

    case 'NORTE 45'
        numD='86';

    case 'VALLEJO'
        numD='87';

    case 'LINDAVISTA'
        numD='88';

    case 'LA VILLA'
        numD='89';

    case 'AQUILES SERD�N'
        numD='90';

    case 'CAMARONES'
        numD='91';

    case 'REFINERIA'
        numD='92';

    case 'SAN JOAQUIN'
        numD='93';

    case 'POLANCO'
        numD='94';

    case 'AUDITORIO'
        numD='95';

    case 'CONSTITUYENTES'
        numD='96';

    case 'SAN PEDRO DE LOS PINOS'
        numD='97';

    case 'SAN ANTONIO'
        numD='98';

    case 'MIXCOAC'
        numD='99';

    case 'BARRANCA DEL MUERTO'
        numD='100';

    case 'SAN JUAN DE LETRAN'
        numD='101';

    case 'DOCTORES'
        numD='102';

    case 'OBRERA'
        numD='103';

    case 'LA VIGA'
        numD='104';

    case 'COYUYA'
        numD='105';

    case 'IZTACALCO'
        numD='106';

    case 'APATLACO'
        numD='107';

    case 'ACULCO'
        numD='108';

    case 'ESCUADRON 201'
        numD='109';

    case 'ATLALILCO'
        numD='110';

    case 'IZTAPALAPA'
        numD='111';

    case 'CERRO DE LA ESTRELLA'
        numD='112';

    case 'UAM-I'
        numD='113';

    case 'CONSTITUCION DE 1917'
        numD='114';

    case 'PATRIOTISMO'
        numD='115';

    case 'CHILPANCINGO'
        numD='116';

    case 'LAZARO CARDENAS'
        numD='117';

    case 'MIXIUHCA'
        numD='118';

    case 'VELODROMO'
        numD='119';

    case 'CIUDAD DEPORTIVA'
        numD='120';

    case 'PUEBLA'
        numD='121';

    case 'AGRICOLA ORIENTAL'
        numD='122';

    case 'CANAL DE SAN JUAN'
        numD='123';

    case 'TEPALCATES'
        numD='124';

    case 'GUELATAO'
        numD='125';

    case 'PE�ON VIEJO'
        numD='126';

    case 'ACATITLA'
        numD='127';

    case 'SANTA MARTA'
        numD='128';

    case 'LOS REYES'
        numD='129';

    case 'LA PAZ'
        numD='130';

    case 'CIUDAD AZTECA'
        numD='131';

    case 'PLAZA ARAGON'
        numD='132';

    case 'OLIMPICA'
        numD='133';

    case 'ECATEPEC'
        numD='134';

    case 'MUZQUIZ'
        numD='135';

    case 'RIO DE LOS REMEDIOS'
        numD='136';

    case 'IMPULSORA'
        numD='137';

    case 'NEZAHUALCOYOTL'
        numD='138';

    case 'VILLA DE ARAGON'
        numD='139';

    case 'BOSQUE DE ARAGON'
        numD='140';

    case 'DEPORTIVO OCEANIA'
        numD='141';

    case 'ROMERO RUBIO'
        numD='142';

    case 'RICARDO FLORES MAGON'
        numD='143';

    case 'TEPITO'
        numD='144';

    case 'LAGUNILLA'
        numD='145';

    case 'GARIBALDI'
        numD='146';

    case 'BUENAVISTA'
        numD='147';

    case 'INSURGENTES SUR'
        numD='148';

    case 'HOSPITAL 20 DE NOVIEMBRE'
        numD='149';

    case 'PARQUE DE LOS VENADOS'
        numD='150';

    case 'EJE CENTRAL'
        numD='151';

    case 'MEXICALTZINGO'
        numD='152';

    case 'CULHUACAN'
        numD='153';

    case 'SAN ANDRES TOMATLAN'
        numD='154';

    case 'LOMAS ESTRELLAS'
        numD='155';

    case 'CALLE 11'
        numD='156';

    case 'PERIFERICO ORIENTE'
        numD='157';

    case 'TEZONCO'
        numD='158';

    case 'OLIVOS'
        numD='159';

    case 'NOPALERA'
        numD='160';

    case 'ZAPOTITLAN'
        numD='161';

    case 'TLALTENCO'
        numD='162';

    case 'TLAHUAC'
        numD='163';
	
end


tiempo=ruta(numO,numD);
set(handles.lee,'string', tiempo);



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
