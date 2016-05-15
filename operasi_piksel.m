
function varargout = operasi_piksel(varargin)
% OPERASI_PIKSEL MATLAB code for operasi_piksel.fig
%      OPERASI_PIKSEL, by itself, creates a new OPERASI_PIKSEL or raises the existing
%      singleton*.
%
%      H = OPERASI_PIKSEL returns the handle to a new OPERASI_PIKSEL or the handle to
%      the existing singleton*.
%
%      OPERASI_PIKSEL('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in OPERASI_PIKSEL.M with the given input arguments.
%
%      OPERASI_PIKSEL('Property','Value',...) creates a new OPERASI_PIKSEL or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before operasi_piksel_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to operasi_piksel_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help operasi_piksel

% Last Modified by GUIDE v2.5 14-May-2016 13:06:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
    'gui_Singleton',  gui_Singleton, ...
    'gui_OpeningFcn', @operasi_piksel_OpeningFcn, ...
    'gui_OutputFcn',  @operasi_piksel_OutputFcn, ...
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


% --- Executes just before operasi_piksel is made visible.
function operasi_piksel_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to operasi_piksel (see VARARGIN)

% Choose default command line output for operasi_piksel
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

%sumar
set(handles.figure1, 'units', 'normalized', 'position', [0.05 0.15 0.9 0.8])
s = SplashScreen( 'operasi_piksel', 'splash_sumar.png', ...
    'ProgressBar', 'on', ...
    'ProgressPosition', 5, ...
    'ProgressRatio', 0.8)
% s.addText( 300, 50, 'OPERASI PIKSEL', 'FontSize', 30, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 270, 'Sumarsono', 'FontSize', 15, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 290, 'Cahyo Fajar Adhiningtyas',  'FontWeight', 'bold', 'FontSize', 15, 'Color', 'white' )
% s.addText( 30, 310, 'Dian Prasetya Pujijaya', 'FontWeight', 'bold', 'FontSize', 15, 'Color', 'white' )
% s.addText( 30, 330, 'Mustafa Kemal Pasha', 'FontSize', 15, 'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 350, 'Lutfiyana', 'FontSize', 15,'FontWeight', 'bold', 'Color', 'white' )
% s.addText( 30, 370, 'Rian Riskiadi', 'FontSize', 15,'FontWeight', 'bold', 'Color', 'white' )
%s.addText( 300, 270, 'Loading...', 'FontSize', 20, 'Color', 'white' )
pause(3)
delete( s )

% UIWAIT makes operasi_piksel wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = operasi_piksel_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Edit dari sini
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function lokasi_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to lokasi_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of lokasi_gambar as text
%        str2double(get(hObject,'String')) returns contents of lokasi_gambar as a double


% --- Executes during object creation, after setting all properties.
function lokasi_gambar_CreateFcn(hObject, eventdata, handles)
% hObject    handle to lokasi_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on button press in tombol_buka_gambar.
function tombol_buka_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_buka_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
buka_gambar;

function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in tombol_simpan.
function tombol_simpan_Callback(hObject, eventdata, handles)
% hObject    handle to tombol_simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
simpan_hasil;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%POP UP
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
contents = get(hObject,'Value')
nama_popupmenu = get(handles.popupmenu1,'String');
popupmenu4value = nama_popupmenu{get(handles.popupmenu1,'Value')};
switch contents
    
    case 1
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
                
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        
        
        
    case 2
        %brightness
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        
    case 3
        %kontras
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.pilih_kernel,'visible','off');
        
    case 4
        %invers
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.figure1,'Userdata');
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_invers = ~(im2bw(citra_asli));
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_invers));
            set(proyek.display_gambar_hasil,'Userdata',citra_invers);
        end
        
    case 5
        %thresholding
        set(handles.slider1,'visible','on');
        set(handles.nilai_slider1,'visible','on');
        set(handles.panel_option,'visible','on');     
        set(handles.pilih_kernel,'visible','off');
        
    case 6
        %Ekualisasi Histogram
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.figure1,'Userdata');
        bit=get(proyek.display_gambar_asli,'Userdata');
        figure;
        if bit==8
            subplot(1,1,1);
            imhist(citra_asli(:,:,1));
            title('Histogram Intensitas Warna Grayscale');
        else
            subplot(3,1,1);
            imhist(citra_asli(:,:,1));
            title('Histogram Intensitas Warna Merah(R)');
            subplot(3,1,2);
            imhist(citra_asli(:,:,2));
            title('Histogram Intensitas Warna Hijau(G)');
            subplot(3,1,3);
            imhist(citra_asli(:,:,3));
            title('Histogram Intensitas Warna Biru(B)');
        end
        
    case 7
        %Filter Batas
        set(handles.panel_option,'visible','off');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','off');        
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            F = (citra_asli);
            Ukuran = size(F);
            tinggi = Ukuran(1);
            lebar = Ukuran(2);
            F=rgb2gray(F);
            G = F;
            for baris=2 : tinggi-1
                for kolom=2 : lebar-1
                    minPiksel = min([F(baris-1, kolom-1) ...
                        F(baris-1, kolom) F(baris, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom+1) F(baris+1, kolom-1) ...
                        F(baris+1, kolom) F(baris+1, kolom+1)]);
                    maksPiksel = min([F(baris-1, kolom-1) ...
                        F(baris-1, kolom) F(baris, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom+1) F(baris+1, kolom-1) ...
                        F(baris+1, kolom) F(baris+1, kolom+1)]);
                    if F(baris, kolom) < minPiksel
                        G(baris, kolom) = minPiksel;
                    else
                        if F(baris, kolom) > maksPiksel
                            G(baris, kolom) = maksPiksel;
                        else
                            G(baris, kolom) = F(baris, kolom);
                        end
                    end
                end
            end
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            citra_hasil = G;
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
        
    case 8
        %Filter Rerata
        set(handles.panel_option,'visible','on');
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.pilih_kernel,'visible','on');
        %pindah ke fungsi pilih_kernel_Callback(hObject, eventdata, handles)

        
    case 9
        %Filter Median
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_asli=rgb2gray(citra_asli);
            %F = (I);
            F = citra_asli;
            [tinggi, lebar] = size(F);
            for baris=2 : tinggi-1
                for kolom=2 : lebar-1
                    data = [F(baris-1, kolom-1) ...
                        F(baris-1, kolom) ...
                        F(baris-1, kolom+1) ...
                        F(baris, kolom-1) ...
                        F(baris, kolom) ...
                        F(baris, kolom+1) ...
                        F(baris+1, kolom-1) ...
                        F(baris+1, kolom) ...
                        F(baris+1, kolom+1)];
                    % Urutkan
                    for i=1 : 8
                        for j=i+1 : 9
                            if data(i) > data(j)
                                tmp = data(i);
                                data(i) = data(j);
                                data(j) = tmp;
                            end
                        end
                    end
                    % Ambil nilai median
                    G(baris, kolom) = data(5);
                end
            end
            
            
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            citra_hasil = G;
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
        
    case 10
        %Filter Low Pass
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            J=rgb2gray(citra_asli);
            h= fspecial('gaussian',[3 3],0.5);
            L=imfilter(J,h);
            k= [1 1 1;
                1 1 1;
                1 1 1]/9;
            citra_hasil=imfilter(J,k);
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            %set (title ('blur matrix'));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
        
    case 11
         %Filter High Pass
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
       
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            a=rgb2gray(citra_asli);
            [m n]=size(a);
            f_transform=fft2(a);
            f_shift=fftshift(f_transform);
            p=m/2;
            q=n/2;
            d0=70;
            for i=1:m
                for j=1:n
                    distance=sqrt((i-p)^2+(j-q)^2);
                    low_filter(i,j)=1-exp(-(distance)^2/(2*(d0^2)));
                end
            end
            filter_apply=f_shift.*low_filter;
            image_orignal=ifftshift(filter_apply);
            image_filter_apply=abs(ifft2(image_orignal));
            citra_hasil = image_filter_apply;
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
            
            
        end
    case 12
        %Filter High Boost
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            
            %f=rgb2gray(I);
            [x,y,z]=size(citra_asli);
            if z>1
                citra_asli=rgb2gray(citra_asli);
            end
            citra_asli=double(citra_asli);
            c=3;
            w_all=c*[0 0 0; 0 1 0; 0 0 0];
            w_high=[0 -1 0; -1 4 -1; 0 -1 0];
            w_boost=w_all+w_high;
            boostl=conv2(citra_asli,w_boost,'same');
            boostl=uint8(boostl);
            
            
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            citra_hasil = boost1;
            set(imshow(citra_hasil));
            %set (title ('blur matrix'));
            set(proyek.display_gambar_hasil,'Userdata',uint8(citra_hasil));
            
        end
    case 13
        %level cliping
        set(handles.slider1,'visible','off');
        set(handles.nilai_slider1,'visible','off');
        set(handles.panel_option,'visible','off');
        set(handles.pilih_kernel,'visible','off');
        
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            %I=rgb2gray(I);
            Hasil=citra_asli;
            Hasil=rgb2gray(Hasil);
            guidata(hObject,handles);
            [tinggi, lebar] = size(Hasil);
            for baris=1 : tinggi
                for kolom=1 : lebar
                    if Hasil(baris, kolom) <= 70
                        Hasil(baris, kolom) = 0;
                    end
                    if Hasil(baris, kolom) >= 120
                        Hasil(baris, kolom) = 255;
                    end
                end
            end
            
            
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            citra_hasil = Hasil
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
        
    otherwise
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in radiobutton1.
function radiobutton1_Callback(hObject, eventdata, handles)
% hObject    handle to radiobutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of radiobutton1

h = get(handles.radiobutton1,'Value');

if h==1
    set(handles.slider1,'visible','on')
else
    set(handles.slider1,'visible','off')
end

% --------------------------------------------------------------------
function File_Callback(hObject, eventdata, handles)
% hObject    handle to File (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function buka_gambar_Callback(hObject, eventdata, handles)
% hObject    handle to buka_gambar (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

proyek=guidata(gcbo);
[namafile,direktori]=uigetfile({'*.jpg';'*.bmp';'*.png';'*.tif';'*.*'},'Buka Gambar')
if isequal(namafile,0)
    return;
end
eval(['cd ''' direktori ''';']);
citra_asli=imread(namafile);
set(proyek.figure1,'CurrentAxes',proyek.display_gambar_asli);
set(imshow(citra_asli));
imshow(citra_asli);
set(proyek.figure1,'Userdata',citra_asli);
set(proyek.display_gambar_asli,'Userdata',citra_asli);
info=imfinfo(namafile);
set(handles.lokasi_gambar,'string', info.Filename);


% --------------------------------------------------------------------
function simpan_Callback(hObject, eventdata, handles)
% hObject    handle to simpan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

proyek=guidata(gcbo);
citra_hasil=get(proyek.figure1,'Userdata');
citra_hasil=get(proyek.display_gambar_hasil,'Userdata');
[filename, foldername] = uiputfile({'*.jpg;*.tif;*.png;*.gif','All Image Files';...
    '*.*','All Files' },'Save Image');
complete_name = fullfile(foldername, filename);
imwrite(citra_hasil, complete_name);

% --------------------------------------------------------------------
function tutup_Callback(hObject, eventdata, handles)
% hObject    handle to tutup (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
respon=keluar('Title','Konfirmasi Keluar');
switch lower(respon)
    case 'tidak'
        %tidak ada aksi
    case 'ya'
        close
end

% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
proyek=guidata(gcbo);
citra_asli=get(proyek.display_gambar_asli,'Userdata');

handles.nilai= get(handles.slider1,'Value');


nama_popupmenu = get(handles.popupmenu1,'String');
popupmenu4value = nama_popupmenu{get(handles.popupmenu1,'Value')};

if isequal(citra_asli,[])
    msgbox('Belum ada gambar!');
else
    switch popupmenu4value
        
        case 'Brightness'
            
            % handles.nilai= get(handles.slider1,'Value');
            
            citra_hasil = citra_asli+handles.nilai;
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
            set(handles.nilai_slider1,'string', handles.nilai);
            
        case 'Kontras'
            citra_hasil = citra_asli*handles.nilai;
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
            set(handles.nilai_slider1,'string', handles.nilai);
            
        case 'Thresholding'
            proyek=guidata(gcbo);
            citra_asli=get(proyek.display_gambar_asli,'Userdata');
            if isequal(citra_asli,[])
                msgbox('Belum ada gambar!');
            else
                %I=rgb2gray(I);
                %level = graythresh(citra_asli);
                level = handles.nilai/255;
                set(handles.nilai_slider1,'string', level);
                citra_hasil = im2bw(citra_asli,level);
                %imshow(BW)
                set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
                set(imshow(citra_hasil));
                set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
            end
    end
end


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function bantuan_Callback(hObject, eventdata, handles)
% hObject    handle to bantuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function about_Callback(hObject, eventdata, handles)
% hObject    handle to about (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
About



function nilai_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to nilai_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of nilai_slider1 as text
%        str2double(get(hObject,'String')) returns contents of nilai_slider1 as a double


% --- Executes during object creation, after setting all properties.
function nilai_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to nilai_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in pilih_kernel.
function pilih_kernel_Callback(hObject, eventdata, handles)
% hObject    handle to pilih_kernel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns pilih_kernel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from pilih_kernel
contents = get(hObject,'Value')

switch contents
    case 1
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        
    case 2 %Mean filter kernel 3x3
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_asli=rgb2gray(citra_asli);
            
            H = fspecial('average',3);
            citra_hasil = imfilter(citra_asli, H);
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
        
    case 3 %Mean filter kernel 5x5
        proyek=guidata(gcbo);
        citra_asli=get(proyek.display_gambar_asli,'Userdata');
        if isequal(citra_asli,[])
            msgbox('Belum ada gambar!');
        else
            citra_asli=rgb2gray(citra_asli);
            
            H = fspecial('average',5);
            citra_hasil = imfilter(citra_asli, H);
            set(proyek.figure1,'CurrentAxes',proyek.display_gambar_hasil);
            set(imshow(citra_hasil));
            set(proyek.display_gambar_hasil,'Userdata',citra_hasil);
        end
end
% --- Executes during object creation, after setting all properties.
function pilih_kernel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pilih_kernel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end