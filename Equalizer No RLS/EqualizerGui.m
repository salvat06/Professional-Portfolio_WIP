function varargout = EqualizerGui(varargin)
% EQUALIZERGUI MATLAB code for EqualizerGui.fig
%      EQUALIZERGUI, by itself, creates a new EQUALIZERGUI or raises the existing
%      singleton*.
%
%      H = EQUALIZERGUI returns the handle to a new EQUALIZERGUI or the handle to
%      the existing singleton*.
%
%      EQUALIZERGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in EQUALIZERGUI.M with the given input arguments.
%
%      EQUALIZERGUI('Property','Value',...) creates a new EQUALIZERGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before EqualizerGui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to EqualizerGui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help EqualizerGui

% Last Modified by GUIDE v2.5 09-May-2015 12:05:14

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @EqualizerGui_OpeningFcn, ...
                   'gui_OutputFcn',  @EqualizerGui_OutputFcn, ...
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

% --- Executes just before EqualizerGui is made visible.
function EqualizerGui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to EqualizerGui (see VARARGIN)

% Choose default command line output for EqualizerGui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes EqualizerGui wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = EqualizerGui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on slider movement.
function gain25_Callback(hObject, eventdata, handles)
% hObject    handle to gain25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain25 = num2str(db2mag(get(handles.gain25,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/25 Hz Gain','Gain',gain25);

% --- Executes during object creation, after setting all properties.
function gain25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain40_Callback(hObject, eventdata, handles)
% hObject    handle to gain40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain40 = num2str(db2mag(get(handles.gain40,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/40 Hz Gain','Gain',gain40);

% --- Executes during object creation, after setting all properties.
function gain40_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain40 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain63_Callback(hObject, eventdata, handles)
% hObject    handle to gain63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain63 = num2str(db2mag(get(handles.gain63,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/63 Hz Gain','Gain',gain63);

% --- Executes during object creation, after setting all properties.
function gain63_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain63 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain100_Callback(hObject, eventdata, handles)
% hObject    handle to gain100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain100 = num2str(db2mag(get(handles.gain100,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/100 Hz Gain','Gain',gain100);


% --- Executes during object creation, after setting all properties.
function gain100_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain100 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain160_Callback(hObject, eventdata, handles)
% hObject    handle to gain160 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain160 = num2str(db2mag(get(handles.gain160,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/160 Hz Gain','Gain',gain160);

% --- Executes during object creation, after setting all properties.
function gain160_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain160 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain250_Callback(hObject, eventdata, handles)
% hObject    handle to gain250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain250 = num2str(db2mag(get(handles.gain250,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/250 Hz Gain','Gain',gain250);

% --- Executes during object creation, after setting all properties.
function gain250_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain400_Callback(hObject, eventdata, handles)
% hObject    handle to gain400 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain400 = num2str(db2mag(get(handles.gain400,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/400 Hz Gain','Gain',gain400);

% --- Executes during object creation, after setting all properties.
function gain400_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain400 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain630_Callback(hObject, eventdata, handles)
% hObject    handle to gain630 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain630 = num2str(db2mag(get(handles.gain630,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/630 Hz Gain','Gain',gain630);

% --- Executes during object creation, after setting all properties.
function gain630_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain630 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain1000_Callback(hObject, eventdata, handles)
% hObject    handle to gain1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain1000 = num2str(db2mag(get(handles.gain1000,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/1000 Hz Gain','Gain',gain1000);

% --- Executes during object creation, after setting all properties.
function gain1000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain1500_Callback(hObject, eventdata, handles)
% hObject    handle to gain1500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain1500 = num2str(db2mag(get(handles.gain1500,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/1500 Hz Gain','Gain',gain1500);

% --- Executes during object creation, after setting all properties.
function gain1500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain1500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain2500_Callback(hObject, eventdata, handles)
% hObject    handle to gain2500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain2500 = num2str(db2mag(get(handles.gain2500,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/2500 Hz Gain','Gain',gain2500);

% --- Executes during object creation, after setting all properties.
function gain2500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain2500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain4000_Callback(hObject, eventdata, handles)
% hObject    handle to gain4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain4000 = num2str(db2mag(get(handles.gain4000,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/4000 Hz Gain','Gain',gain4000);

% --- Executes during object creation, after setting all properties.
function gain4000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain6300_Callback(hObject, eventdata, handles)
% hObject    handle to gain6300 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain6300 = num2str(db2mag(get(handles.gain6300,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/6300 Hz Gain','Gain',gain6300);

% --- Executes during object creation, after setting all properties.
function gain6300_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain6300 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain16k_Callback(hObject, eventdata, handles)
% hObject    handle to gain16k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain16k = num2str(db2mag(get(handles.gain16k,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/16000 Hz Gain','Gain',gain16k);

% --- Executes during object creation, after setting all properties.
function gain16k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain16k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function gain10k_Callback(hObject, eventdata, handles)
% hObject    handle to gain10k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
gain10k = num2str(db2mag(get(handles.gain10k,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/10000 Hz Gain','Gain',gain10k);

% --- Executes during object creation, after setting all properties.
function gain10k_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gain10k (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function bass_Callback(hObject, eventdata, handles)
% hObject    handle to bass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
Gain = get(handles.bass,'value');
% Set gain values to value
set(handles.gain25,'value',Gain);
set(handles.gain40,'value',Gain);
set(handles.gain63,'value',Gain);
set(handles.gain100,'value',Gain);
set(handles.gain160,'value',Gain);
% Convert to string
String = num2str(db2mag(Gain));
% Set gain parameters to string
set_param('equalizer_model_deluxe/25 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/40 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/63 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/100 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/160 Hz Gain','Gain',String);


% --- Executes during object creation, after setting all properties.
function bass_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bass (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function middle_Callback(hObject, eventdata, handles)
% hObject    handle to middle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
Gain = get(handles.middle,'value');
% Set gain values to value
set(handles.gain250,'value',Gain);
set(handles.gain400,'value',Gain);
set(handles.gain630,'value',Gain);
set(handles.gain1000,'value',Gain);
set(handles.gain1500,'value',Gain);
% Convert to string
String = num2str(db2mag(Gain));
% Set gain parameters to string
set_param('equalizer_model_deluxe/250 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/400 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/630 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/1000 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/1500 Hz Gain','Gain',String);

% --- Executes during object creation, after setting all properties.
function middle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to middle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function treble_Callback(hObject, eventdata, handles)
% hObject    handle to treble (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
Gain = get(handles.treble,'value');
% Set gain values to value
set(handles.gain2500,'value',Gain);
set(handles.gain4000,'value',Gain);
set(handles.gain6300,'value',Gain);
set(handles.gain10k,'value',Gain);
set(handles.gain16k,'value',Gain);
% Convert to string
String = num2str(db2mag(Gain));
% Set gain parameters to string
set_param('equalizer_model_deluxe/2500 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/4000 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/6300 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/10000 Hz Gain','Gain',String);
set_param('equalizer_model_deluxe/16000 Hz Gain','Gain',String);

% --- Executes during object creation, after setting all properties.
function treble_CreateFcn(hObject, eventdata, handles)
% hObject    handle to treble (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in Browse.
function Browse_Callback(hObject, eventdata, handles)
% hObject    handle to Browse (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get file name and path name
[filename,pathname] = uigetfile('.wav');
% Full file path
filename = fullfile(pathname,filename);
% Set file handle to file path
set(handles.File,'string',filename);

% --- Executes on button press in Play.
function Play_Callback(hObject, eventdata, handles)
% hObject    handle to Play (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get file from File
filename = get(handles.File,'string');
% Set inputFilename parameter
set_param('equalizer_model_deluxe/Audio Signal','inputFilename',filename);
% Set start parameter
set_param('equalizer_model_deluxe','SimulationCommand','start');
% Set Pause string
set(handles.Pause,'string','Pause');



% --- Executes on button press in Pause.
function Pause_Callback(hObject, eventdata, handles)
% hObject    handle to Pause (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get string from Pause
string = get(handles.Pause,'string');
% Switch string
switch string
    % Pause Case
    case 'Pause'
% Set Pause parameter
set_param('equalizer_model_deluxe','SimulationCommand','pause');
        % Set string to Continue
        set(handles.Pause,'string','Continue');
    % Continue case
    case 'Continue'
% Set continue parameter
set_param('equalizer_model_deluxe','SimulationCommand','continue');
        % Set string to Pause
        set(handles.Pause,'string','Pause');
% End switch
end

% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Set stop parameter
set_param('equalizer_model_deluxe','SimulationCommand','stop');
% Set pause string
set(handles.Pause,'string','Pause');

function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of File as text
%        str2double(get(hObject,'String')) returns contents of File as a double


% --- Executes during object creation, after setting all properties.
function File_CreateFcn(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Mute.
function Mute_Callback(hObject, eventdata, handles)
% hObject    handle to Mute (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Get string from Mute

string = get(handles.Mute,'string');
% Switch string
switch string
    % Mute case
    case 'Mute'
% Set Mute parameter
set_param('equalizer_model_deluxe/Mute Switch','sw','0');
        % Set string to Sound
        set(handles.Mute,'string','Sound');
    % Sound case
    case 'Sound'
% Set Mute parameter
set_param('equalizer_model_deluxe/Mute Switch','sw','1');
        set(handles.Mute,'string','Mute');
% End switch
end


% --- Executes on button press in Reset.
function Reset_Callback(hObject, eventdata, handles)
% hObject    handle to Reset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

set(handles.gain25,'value',0);
set(handles.gain40,'value',0);
set(handles.gain63,'value',0);
set(handles.gain100,'value',0);
set(handles.gain160,'value',0);
set(handles.gain250,'value',0);
set(handles.gain400,'value',0);
set(handles.gain630,'value',0);
set(handles.gain1000,'value',0);
set(handles.gain1500,'value',0);
set(handles.gain2500,'value',0);
set(handles.gain4000,'value',0);
set(handles.gain6300,'value',0);
set(handles.gain10k,'value',0);
set(handles.gain16k,'value',0);


% --- Executes on slider movement.
function Volume_Callback(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

% Get value from slider
volume = num2str(db2mag(get(handles.Volume,'value')));
% Set parameter to value
set_param('equalizer_model_deluxe/Volume','Gain',volume);

% --- Executes during object creation, after setting all properties.
function Volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

% --- Executes on button press in Echo.
function Echo_Callback(hObject, eventdata, handles)
% hObject    handle to Echo (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

string = get(handles.Echo,'string');
% Switch string
switch string
    % Echo case
    case 'Echo'
% Set Echo parameter
set_param('equalizer_model_deluxe/Echo Switch','sw','0');
        % Set string to Sound
        set(handles.Echo,'string','No Echo');
    % Sound case
    case 'No Echo'
% Set Echo parameter
set_param('equalizer_model_deluxe/Echo Switch','sw','1');
        set(handles.Echo,'string','Echo');
% End switch
end

% --- Executes on button press in Flange.
function Flange_Callback(hObject, eventdata, handles)
% hObject    handle to Flange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

string = get(handles.Flange,'string');
% Switch string
switch string
    % Flange case
    case 'Flange'
% Set Flange parameter
set_param('equalizer_model_deluxe/Flange','sw','0');
        % Set string to No Flange
        set(handles.Flange,'string','No Flange');
    % No Flange case
    case 'No Flange'
% Set Flange parameter
set_param('equalizer_model_deluxe/Flange','sw','1');
        set(handles.Flange,'string','Flange');
% End switch
end

% --- Executes on button press in Reverb.
function Reverb_Callback(hObject, eventdata, handles)
% hObject    handle to Reverb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

string = get(handles.Reverb,'string');
% Switch string
switch string
    % Reverberation case
    case 'Reverberation'
% Set Reverb parameter
set_param('equalizer_model_deluxe/Reverb Switch','sw','0');
        % Set string to No Reverb
        set(handles.Reverb,'string','No Reverb');
    % No Reverb case
    case 'No Reverb'
% Set Reverb parameter
set_param('equalizer_model_deluxe/Reverb Switch','sw','1');
        set(handles.Reverb,'string','Reverberation');
% End switch
end

% --- Executes on button press in Voice.
function Voice_Callback(hObject, eventdata, handles)
% hObject    handle to Voice (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

string = get(handles.Voice,'string');
% Switch string
switch string
    % Voice case
    case 'Voice'
% Set Voice parameter
set_param('equalizer_model_deluxe/Vocal Removal','sw','0');
        % Set string to Add Voice
        set(handles.Voice,'string','Add Voice');
    % Add Voice case
    case 'Add Voice'
% Set Voice parameter
set_param('equalizer_model_deluxe/Vocal Removal','sw','1');
        set(handles.Voice,'string','Voice');
% End switch
end