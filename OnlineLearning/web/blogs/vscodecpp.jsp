<%-- 
    Document   : vscodecpp
    Created on : Sep 22, 2023, 1:50:58 AM
    Author     : may tinh cua hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="blog.css"/>
        <title>Cài đặt Visual Studio Code Lập trình C++ cực kì dễ dàng</title>
    </head>
    <body>
        <div class="container">
            <!--                <div class="row">-->
            <div class="content">
                <div class="author">
                    <p>Tác giả: ${sessionScope.pageBlog.author}</p>
                    <p>${sessionScope.pageBlog.dateRelease}</p>
                </div>
                <div class="title">
                    <h2>
                        Cài đặt Visual Studio Code Lập trình C++ cực kì dễ dàng 
                    </h2>
                </div>
                <div class="info">
                    <h3>
                        Hướng dẫn cài đặt vscode để lập trình C++ trên Windows
                    </h3>
                    <h3>1. Tải và cài đặt vscode</h3>
                    <p>Các bạn vào trang chủ vscode link này, chọn phiên bản phù hợp với thiết bị của các bạn và tải về.</p>
                    <img src="blogimgs/titleblog1.jpg" alt="alt"/>
                    <p>Sau khi tải về, chạy file để cài đặt. Các bạn chỉ cần Next - Next - Next là xong nhé.</p>
                    <h3>2. Cài Extension C++</h3>
                    <p>Sau khi cài đặt, vscode sẽ có giao diện như thế này</p>
                    <img src="blogimgs/homevscode.png" alt="alt"/>
                    <p>Các bạn nhấn vào Extensions hoặc Ctrl + Shift + X để mờ giao diện như dưới</p>
                    <img src="blogimgs/vscodeextension.png" alt="alt"/>
                    <p>Tiếp theo các bạn gõ trên thanh tìm kiếm từ khóa “C++”, sau đó chọn extension C/C++ do Microsoft phát hành và ấn Install để cài đặt.</p>
                    <p>Sau khi quá trình cài đặt hoàn tất bạn hãy tắt VSCode đi (bước này quan trọng nha)</p>
                    <h3>3. Cài đặt môi trường</h3>
                    <p>Cài complie: MinGW<br>Các bạn truy cập link này và tải bộ cài MinGW về. Sau đó các bạn mở file vừa tải về ra</p>
                    <img src="blogimgs/mingw-1.png" alt="alt"/>
                    <img src="blogimgs/mingw-2.png" alt="alt"/>
                    <p>Nhớ chọn vị trí lưu compile, lúc sau sẽ cần dùng đến</p>
                    <img src="blogimgs/mingw3.png" alt="alt"/>
                    <p>Đợi tool tải dữ liệu xong rồi bạn click vào continue</p>
                    <img src="blogimgs/mingw-4.png" alt="alt"/>
                    <p>Đến đây, các bạn chọn 2 dòng mingw32-base và mingw32-gcc-g++. Sau đó, Installation -> Apply Changes. Rồi tiếp tục chờ ...</p>
                    <img src="blogimgs/mingw-5.png" alt="alt"/>
                    <p>Tải xong rồi thì bạn bấm close để thoát ra</p>
                    <h3>Cài đặt môi trường</h3>
                    <p>Mở của số System: Chuột phải vào biểu tượng This PC -> Properties, Windows Settings hiện ra, lướt xuống phần related settings, chọn Advanced system settings. Hoặc vào Windows Search gõ Advanced system settings -> Environment Variables.</p>
                    <p>Trong thư mục System variables, chọn Path -> Edit</p>
                    <p>Chọn New. Tìm đường dẫn chứa thư mục bin của compile, copy, paste vào rồi nhấn OK.</p>
                    <img src="blogimgs/mingw-6.png" alt="alt"/>
                    <p>Đường dẫn mặc định là: C:\MinGW\bin</p>
                    <p>Để kiểm tra đã cài Path thành công hay chưa bạn mở Command Prompt (cmd) và gõ: g++ --version</p>
                    <img src="blogimgs/mingw-7.png" alt="alt"/>
                    <h3>4. Biên tập và chạy chương trình</h3>
                    <p>Chương trình đầu tiên: Hello World</p>
                    <p>Mở Visual Studio Code ra. Trên thanh công cụ: File -> New Text File hoặc bạn có thể dùng tổ hợp Ctrl + N</p>
                    <p>Bấm vào Select a language rồi chọn C++</p>
                    <img src="blogimgs/createfile.png" alt="alt"/>
                    <p>Bạn hãy gõ vào vài dòng code huyền thoại dưới đây vào nhé.</p>
                    <img src="blogimgs/helloworld.png" alt="alt"/>
                    <p>Ctrl + S để lưu lại. Để chạy chương trình trên terminal, gõ dòng lệnh: g++ -g HelloWorld.cpp -o HelloWorld.exe</p>
                    <p>Để chạy chương trình, bạn gõ lệnh: ./HelloWorld.exe</p>
                    <p>Terminal sẽ hiện kết quả như dưới.</p>
                    <img src="blogimgs/result.png" alt="alt"/>
                    <br/>
                    <h3>Kết</h3>
                    <p>Trên đây, mình đã giới thiệu với các bạn về Visual Studio Code và các cài đặt để lập trình C++. Hy vọng với cách này sẽ giúp các bạn thực hiện thành công.</p>
                </div>

<!--                <div class="comment">
                    <form >
                        <input type="text"  placeholder="Điền comment của bạn vào đây nhé   "/>
                    </form>
                </div>-->
            </div>
        </div>
    </body>
</html>
