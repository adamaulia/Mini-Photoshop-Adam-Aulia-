function varargout = gui(varargin)
% GUI MATLAB code for gui.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before gui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to gui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help gui

% Last Modified by GUIDE v2.5 04-Dec-2015 08:34:50

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @gui_OpeningFcn, ...
                   'gui_OutputFcn',  @gui_OutputFcn, ...
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


% --- Executes just before gui is made visible.
function gui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to gui (see VARARGIN)

% Choose default command line output for gui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes gui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = gui_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



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



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_sampling.
function button_sampling_Callback(hObject, eventdata, handles)
% hObject    handle to button_sampling (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
temp=get(handles.sampling_text, 'string');
sampling=str2double(temp);
%%sampling=20;
[m,n,o]=size(im);

new_image=im(1:m-sampling:m,1:n-sampling:n,:);
axes(handles.axes2);
imshow(new_image);



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to sampling_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of sampling_text as text
%        str2double(get(hObject,'String')) returns contents of sampling_text as a double


% --- Executes during object creation, after setting all properties.
function sampling_text_CreateFcn(hObject, eventdata, handles)
% hObject    handle to sampling_text (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_kuantisasi.
function button_kuantisasi_Callback(hObject, eventdata, handles)
% hObject    handle to button_kuantisasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
temp=get(handles.text_kuantisasi, 'string');
val=str2double(temp);
[x2,map2]= rgb2ind(im,val);
axes(handles.axes2);
imshow(x2,map2);

% --- Executes on button press in button_zoomin.
function button_zoomin_Callback(hObject, eventdata, handles)
% hObject    handle to button_zoomin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
I=imresize(im,[128,128]);
[a ,b, c]=size(I);
m=1;
n=1;
for ii=1:a
    for jj=1:b
%         disp(ii);
%         disp(jj);
        zoom(m,n,:)=I(ii,jj,:);
        zoom(m,n+1,:)=I(ii,jj,:);
        zoom(m+1,n,:)=I(ii,jj,:);
        zoom(m+1,n+1,:)=I(ii,jj,:);
        n=n+2;
    end
    m=m+2;
    n=1;
end
axes(handles.axes2);
imshow(zoom);
figure,imshow(zoom);title('zoom in');
figure,imshow(I);title('original image');



% --- Executes on button press in button_zoomout.
function button_zoomout_Callback(hObject, eventdata, handles)
% hObject    handle to button_zoomout (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
I=imresize(im,[256,256]);
[a ,b,c]=size(I);


for ii=1:2:a
    for jj=1:2:b
        temp((ii+1)/2,(jj+1)/2,:)=I(ii,jj,:);
    end
end
axes(handles.axes2);
imshow(temp);
figure,imshow(temp);title('zoom out');
figure,imshow(I);title('original imge');


function editRotare_Callback(hObject, eventdata, handles)
% hObject    handle to editRotare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of editRotare as text
%        str2double(get(hObject,'String')) returns contents of editRotare as a double
global im;
temp=get(handles.editRotare, 'string');
rotare=str2double(temp);
rot=imrotate(im,rotare);
axes(handles.axes2);
imshow(rot);



% --- Executes during object creation, after setting all properties.
function editRotare_CreateFcn(hObject, eventdata, handles)
% hObject    handle to editRotare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in buttonRotare.
function buttonRotare_Callback(hObject, eventdata, handles)
% hObject    handle to buttonRotare (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in flip_horizontal.
function flip_horizontal_Callback(hObject, eventdata, handles)
% hObject    handle to flip_horizontal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
A=imresize(im,[256,256]);
[m n p]=size(A);
flip_V=zeros(size(A));
flip_V=uint8(flip_V);

for i=1:m-1
    for j=1:n-1
        for k=1:p
            flip_V(i,n-j,k)=A(i,j,k);
        end
        
    end
    
end
axes(handles.axes2);
imshow(flip_V);
%figure,imshow(flip_V);

% --- Executes on button press in flipvertikal.
function flipvertikal_Callback(hObject, eventdata, handles)
% hObject    handle to flipvertikal (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
A=imresize(im,[512,512]);
[m n p]=size(A);
flip_H=zeros(size(A));
flip_H=uint8(flip_H);


for i=1:m-1
    for j=1:n-1
        for k=1:p
            flip_H(m-i,n-j,k)=A(i,j,k);
        end
        
    end
    
end
axes(handles.axes2);
imshow(flip_H);

function cut_X1_Callback(hObject, eventdata, handles)
% hObject    handle to cut_X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cut_X1 as text
%        str2double(get(hObject,'String')) returns contents of cut_X1 as a double


% --- Executes during object creation, after setting all properties.
function cut_X1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cut_X1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cut_X2_Callback(hObject, eventdata, handles)
% hObject    handle to cut_X2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cut_X2 as text
%        str2double(get(hObject,'String')) returns contents of cut_X2 as a double


% --- Executes during object creation, after setting all properties.
function cut_X2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cut_X2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cut_Y1_Callback(hObject, eventdata, handles)
% hObject    handle to cut_Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cut_Y1 as text
%        str2double(get(hObject,'String')) returns contents of cut_Y1 as a double


% --- Executes during object creation, after setting all properties.
function cut_Y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cut_Y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function cut_Y2_Callback(hObject, eventdata, handles)
% hObject    handle to cut_Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of cut_Y2 as text
%        str2double(get(hObject,'String')) returns contents of cut_Y2 as a double


% --- Executes during object creation, after setting all properties.
function cut_Y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to cut_Y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in button_cutpaste.
function button_cutpaste_Callback(hObject, eventdata, handles)
% hObject    handle to button_cutpaste (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
temp=get(handles.cut_X1, 'string');
X1=str2double(temp);
temp=get(handles.cut_X2, 'string');
X2=str2double(temp);
temp=get(handles.cut_Y1, 'string');
Y1=str2double(temp);
temp=get(handles.cut_Y2, 'string');
Y2=str2double(temp);
new_image=im(X1:X2,Y1:Y2,:);
axes(handles.axes2);
imshow(new_image);


% --- Executes on button press in button_histeg.
function button_histeg_Callback(hObject, eventdata, handles)
% hObject    handle to button_histeg (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
im(:,:,1)=histeq(im(:,:,1));
im(:,:,2)=histeq(im(:,:,2));
im(:,:,3)=histeq(im(:,:,3));
figure,imhist(im(:,:,1));title('after histeq red');
figure,imhist(im(:,:,2));title('after histeq green');
figure,imhist(im(:,:,3));title('after histeq blue');
axes(handles.axes2);
imshow(im);


% --- Executes on button press in button_load_masking.
function button_load_masking_Callback(hObject, eventdata, handles)
% hObject    handle to button_load_masking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im2;
[filename , pathname] = uigetfile('.jpg','.bmp','.tiff');
 path = strcat(pathname,filename);
im2 =imread(path);
axes(handles.axes2);
imshow(im2);

% --- Executes on button press in button_masking.
function button_masking_Callback(hObject, eventdata, handles)
% hObject    handle to button_masking (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
global im2;
bw=im2bw(im2);
[a,b]=size(bw);
disp(a);
disp(b);
im=imresize(im,[a b]);
result(:,:,1)=double(bw).*double(im(:,:,1));
result(:,:,2)=double(bw).*double(im(:,:,2));
result(:,:,3)=double(bw).*double(im(:,:,3));
axes(handles.axes2);
imshow(uint8(result));


% --- Executes on button press in mean_button.
function mean_button_Callback(hObject, eventdata, handles)
% hObject    handle to mean_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
gray=rgb2gray(im);
red=im(:,:,1);
green=im(:,:,2);
blue=im(:,:,3);

Noise(:,:,1)=imnoise(red,'salt & pepper',0.2);
Noise(:,:,2)=imnoise(green,'salt & pepper',0.2);
Noise(:,:,3)=imnoise(blue,'salt & pepper',0.2);

filter=fspecial('average',[7 7]);

result(:,:,1)=imfilter(Noise(:,:,1),filter);
result(:,:,2)=imfilter(Noise(:,:,2),filter);
result(:,:,3)=imfilter(Noise(:,:,3),filter);

axes(handles.axes1);
imshow(Noise);
axes(handles.axes2);
imshow(uint8(result));






% --- Executes on button press in median_mean.
function median_mean_Callback(hObject, eventdata, handles)
% hObject    handle to median_mean (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
gray=rgb2gray(im);
red=im(:,:,1);
green=im(:,:,2);
blue=im(:,:,3);

Noise(:,:,1)=imnoise(red,'salt & pepper',0.2);
Noise(:,:,2)=imnoise(green,'salt & pepper',0.2);
Noise(:,:,3)=imnoise(blue,'salt & pepper',0.2);


result(:,:,1)=medfilt2(Noise(:,:,1),[7 7]);
result(:,:,2)=medfilt2(Noise(:,:,2),[7 7]);
result(:,:,3)=medfilt2(Noise(:,:,3),[7 7]);

axes(handles.axes1);
imshow(Noise);
axes(handles.axes2);
imshow(uint8(result));


% --- Executes on button press in mode_button.
function mode_button_Callback(hObject, eventdata, handles)
% hObject    handle to mode_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

global im;
gray=rgb2gray(im);
red=im(:,:,1);
green=im(:,:,2);
blue=im(:,:,3);

Noise(:,:,1)=imnoise(red,'salt & pepper',0.2);
Noise(:,:,2)=imnoise(green,'salt & pepper',0.2);
Noise(:,:,3)=imnoise(blue,'salt & pepper',0.2);
modus = @(x) mode(x(:));
output(:,:,1) = nlfilter(Noise(:,:,1),[3 3],modus);
output(:,:,2) = nlfilter(Noise(:,:,2),[3 3],modus);
output(:,:,3) = nlfilter(Noise(:,:,3),[3 3],modus);
% figure,imshowpair(Jrgb,mod,'montage');title('modus');
axes(handles.axes1);
imshow(Noise);
axes(handles.axes2);
imshow(output);


% --- Executes on button press in canny_button.
function canny_button_Callback(hObject, eventdata, handles)
% hObject    handle to canny_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
bw=im2bw(im);
result=edge(bw,'canny');
axes(handles.axes2);
imshow(result);


% --- Executes on button press in prewit_button.
function prewit_button_Callback(hObject, eventdata, handles)
% hObject    handle to prewit_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
bw=rgb2gray(im);
result=edge(bw,'prewitt');
axes(handles.axes2);
imshow(result);

% --- Executes on button press in sobel_button.
function sobel_button_Callback(hObject, eventdata, handles)
% hObject    handle to sobel_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
bw=rgb2gray(im);
result=edge(bw,'sobel');
axes(handles.axes2);
imshow(result);

% --- Executes on button press in laplace_button.
function laplace_button_Callback(hObject, eventdata, handles)
% hObject    handle to laplace_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
bw=rgb2gray(im);
result=edge(bw,'log');
axes(handles.axes2);
imshow(result);

% --- Executes on button press in prewit2_button.
function prewit2_button_Callback(hObject, eventdata, handles)
% hObject    handle to prewit2_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
gray=rgb2gray(im);
h=fspecial('prewit');
result=imfilter(gray,h);
% figure,imshow(result);
axes(handles.axes2);
imshow(result);

% --- Executes on button press in segmentation_button.
function segmentation_button_Callback(hObject, eventdata, handles)
% hObject    handle to segmentation_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
gray=rgb2gray(im);
tes=gray <50;
%%imshow(tes);
r=im(:,:,1);
g=im(:,:,2);
b=im(:,:,3);
out(:,:,1)=double(r).*tes;
out(:,:,2)=double(g).*tes;
out(:,:,3)=double(b).*tes;
axes(handles.axes2);
imshow(uint8(out));

% --- Executes on button press in pseudocolor_button.
function pseudocolor_button_Callback(hObject, eventdata, handles)
% hObject    handle to pseudocolor_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
gray=im;
[a,b]=size(gray);
new_img=zeros(a,b,3);
for ii=1:a
    for jj=1:b
        if gray(ii,jj)<= 32
            new_img(ii,jj,1)=19;
            new_img(ii,jj,2)=10;
            new_img(ii,jj,3)=13;
        end
        if gray(ii,jj)>=33 & gray(ii,jj) <=64
            new_img(ii,jj,1)=60;
            new_img(ii,jj,2)=75;
            new_img(ii,jj,3)=70;
        end
        if gray(ii,jj)>=65 & gray(ii,jj) <=96
            new_img(ii,jj,1)=76;
            new_img(ii,jj,2)=93;
            new_img(ii,jj,3)=77;
        end
        if gray(ii,jj)>=97 & gray(ii,jj) <=128
            new_img(ii,jj,1)=79;
            new_img(ii,jj,2)=80;
            new_img(ii,jj,3)=82;
        end
        if gray(ii,jj)>=129 & gray(ii,jj) <=160
            new_img(ii,jj,1)=148;
            new_img(ii,jj,2)=169;
            new_img(ii,jj,3)=170;
        end
        if gray(ii,jj)>=161 & gray(ii,jj) <=192
            new_img(ii,jj,1)=181;
            new_img(ii,jj,2)=198;
            new_img(ii,jj,3)=166;
        end
        if gray(ii,jj)>=193 & gray(ii,jj) <=224
            new_img(ii,jj,1)=210;
            new_img(ii,jj,2)=234;
            new_img(ii,jj,3)=242;
        end
        if (gray(ii,jj)>=223 & gray(ii,jj) <=256)
            new_img(ii,jj,1)=242;
            new_img(ii,jj,2)=242;
            new_img(ii,jj,3)=242;
        end
    end  
end
new_img=uint8(new_img);
axes(handles.axes2);
imshow(new_img);
figure,imshow(new_img);

% --- Executes on button press in dilasi_button.
function dilasi_button_Callback(hObject, eventdata, handles)
% hObject    handle to dilasi_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bw2;
se=strel('disk',12);
bw2=imdilate(bw2,se);
axes(handles.axes2);
imshow(bw2);


% --- Executes on button press in erosi_button.
function erosi_button_Callback(hObject, eventdata, handles)
% hObject    handle to erosi_button (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global bw2;
se=strel('disk',12);
bw2=imerode(bw2,se);
axes(handles.axes2);
imshow(bw2);

% --- Executes on button press in loadButton.
function loadButton_Callback(hObject, eventdata, handles)
% hObject    handle to loadButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global im;
global bw2;
[filename , pathname] = uigetfile('.jpg','.bmp','.png');
path = strcat(pathname,filename);
im =imread(path);
bw=im2bw(im);
bw2=~bw;
axes(handles.axes1);
imshow(im);




% --- Executes on button press in ClearButton.
function ClearButton_Callback(hObject, eventdata, handles)
% hObject    handle to ClearButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla(handles.axes1)
cla(handles.axes2)



function text_kuantisasi_Callback(hObject, eventdata, handles)
% hObject    handle to text_kuantisasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of text_kuantisasi as text
%        str2double(get(hObject,'String')) returns contents of text_kuantisasi as a double


% --- Executes during object creation, after setting all properties.
function text_kuantisasi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to text_kuantisasi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
