<%-- 
    Document   : laptrinhgame
    Created on : Sep 22, 2023, 2:10:45 AM
    Author     : may tinh cua hieu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>So sánh chip A17 Pro và A16 Bionic</title>
        <link rel="stylesheet" type="text/css" href="../css/headerStyle.css"/>
        <link rel="stylesheet" type="text/css" href="../css/footer.css"/>
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
                        So sánh chip A17 Pro và A16 Bionic
                    </h2>
                </div>
                <div class="info">
                    <p>A17 Pro dược cho là phiên bản của con chip A16 Bionic và có chung kiến trúc. Apple tập trung vào nâng cấp GPU, bộ nhớ và các tình năng khác.</p>
                    <img src="blogimgs/a17vsa16-1.jpg" alt="alt"/>
                    <h3>
                        1. Thông số phần cứng
                    </h3>
                    <p>Apple cho biết A17 Pro là chip đầu tiên trong ngành sản xuất trên tiến trình 3nm. Mặc dù có 6 nhân CPU giống A16 Bionic, nó nhanh và mạnh hơn 
                        nhờ được cải tiến về thiết kế và kiến trúc vi mô. Theo Apple, A17 Pro là chip có hiệu năng đơn luồng nhanh nhất hiện nay trên smartphone.</p>
                    <div class="tb">
                        <div class="tbdetail">
                            <table>
                                <tr>
                                    <th></th>
                                    <th>A17 Pro</tg>
                                    <th>A16 Bionic</th>
                                </tr>
                                <tr>
                                    <th>CPU</th>
                                    <td>6 nhân</td>
                                    <td>6 nhân</td>
                                </tr>
                                <tr>
                                    <th>GPU</th>
                                    <td>6 nhân</td>
                                    <td>5 nhân</td>
                                </tr>
                                <tr>
                                    <th>Neural Engine</th>
                                    <td>16 nhân, xử lí 35 nghìn tỷ hoạt động mỗi giây</td>
                                    <td>16 nhân, xử lí 17 nghìn tỷ hoạt động mỗi giây</td>
                                </tr>
                                <tr>
                                    <th>Memory</th>
                                    <td>8Gb</td>
                                    <td>6Gb</td>
                                </tr>
                                <tr>
                                    <th>Transitor</th>
                                    <td>19 tỷ</td>
                                    <td>16 tỷ</td>
                                </tr>
                                <tr>
                                    <th>Tiến trình sản suất</th>
                                    <td>3nm</td>
                                    <td>4nm</td>
                                </tr>
                            </table>
                        </div>
                    </div>
                    <h3>2. Hiệu xuất CPU</h3>
                    <p>Apple không chia sẻ so sánh hiệu suất giữa hai mẫu chip A17 Pro và A16 Bionic, nên có thể hiệu suất giữa hai 
                        mẫu chip này không chênh lệch hoặc thậm chí ngang nhau.</p>
                    <p>Tuy nhiên, chip xử lý của Apple vẫn được cho là CPU hiệu quả nhất dành cho thiết bị di động và có hiệu suất
                        trên mỗi watt cao gấp 3 lần so với chip tốt nhất của đối thủ hiện có.</p>
                    <h3>3. RAM</h3>
                    <p>Trên iPhone 15 Pro và Pro Max, RAM 8 GB (cao hơn 2 GB so với thế hệ trước) cùng chip A17 Pro sẽ giúp tăng 
                        trải nghiệm người dùng. Máy sẽ khởi chạy hay chuyển đổi ứng dụng nhanh và mượt mà hơn so với iPhone 14 Pro 
                        và Pro Max vốn chỉ dùng RAM 6 GB và chip A16 Bionic. Mặc dù có RAM thấp hơn so với các smartphone Android, 
                        iPhone thường vượt trội so với các đối thủ do Apple có thể tinh chỉnh sự tương thích giữa phần cứng và phần 
                        mềm tối ưu hơn.</p>
                    <h3>4. Hiệu năng GPU A17 Pro và A16 Bionic</h3>
                    <p>GPU của A17 Pro được cải tiến mạnh so với A16 Bionic ở ba khía cạnh: Hiệu năng và hiệu suất, khả năng chạy các 
                        ứng dụng phức tạp, tính năng render mới.</p>
                    <p>Về tốc độ xử lý, Apple cho biết GPU trên A17 Pro ở level chuyên nghiệp và thiết kế 6 nhân mới cho hiệu năng đồ 
                        họa nhanh hơn 20% so với A16. GPU này hoạt động tốt ngay cả khi chơi game trong thời gian dài nhờ các tính năng 
                        như tạo bóng dạng lưới.</p>
                    <h3>5. Ray Tracing bằng phần cứng</h3>
                    <p>Một nâng cấp lớn khác của GPU trên A17 Pro là tính năng Ray Tracing được tăng tốc bằng phần cứng nhờ đó mang lại 
                        đồ hoạt mượt mà hơn dù ở tốc độ khung hình cao. Tính năng Ray Tracing trên GPU của A17 Pro nhanh hơn 4 lần so với 
                        A16 Bionic. Để nhấn mạnh tính năng này, các nhà phát triển game như Capcom cho biết iPhone 15 Pro và Pro Max có thể 
                        chơi các game đòi hỏi GPU mạnh mẽ như Resident Evil 4 và Resident Evil Village.</p>
                    <img src="blogimgs/re4.png" alt="alt"/>
                    <h3>6. Chuẩn truyền tải USB 3.2</h3>
                    <p>Apple cho biết với chip A17 Pro hai mẫu iPhone 15 Pro và Pro Max có tốc độ truyền tải dữ liệu 10 Gb/giây của USB 3.2,
                        nhanh hơn 20 so với tốc độ 480 Mb/giây của chuẩn USB 2.0 đang có trên iPhone 15 tiêu chuẩn sử dụng A16 Bionic hay các 
                        mẫu iPhone sử dụng cổng Lightning từ iPhone 14 trở về trước.</p>
                    <p>Tuy nhiên, iPad mini với chip A15 Bionic đã được trang bị cổng USB C chuẩn 3.2 với tốc độ 5 Gb/giây cao hơn nhiều so với 
                        iPhone 15 sử dụng chip A16 Bionic, do đó giới hạn về chuẩn truyền dữ liệu do chip xử lý chỉ là cách truyền thông của Apple.</p>
                    <h3>Tổng kết</h3>
                    <p>A17 Pro được sản xuất trên quy trình 3nm tiên tiến nhất hiện nay, đây cũng là bước nhảy vọt về công nghệ sản xuất chip kể từ quy 
                        trình 5nm năm 2020 sử dụng cho A14 Bionic. Tuy nhiên, A17 Pro không được đánh giá là một cải tiến lớn so với A16 Bionic.</p>
                    <p>Theo Revegnus, A17 Pro chỉ là phiên bản cải tiến của A16 Bionic thay vì được làm mới hoàn toàn. Trước đó, A15 Bionic có tên mã là 
                        H14 và A16 Bionic là H15. Theo quy ước đặt tên của Apple, A17 Pro nên có tên mã là H16, nhưng tên mã của chip mới trên iPhone 15 Pro
                        lại là H15 Coll. Điều này cho thấy A17 Pro có kiến trúc chip tương tự A16 Bionic. Apple không thay đổi nhiều mà tối ưu bộ nhớ đệm, 
                        nâng cấp xung nhịp cũng như cải tiến GPU. Tên mã cũng cho thấy Apple không tập trung vào phát triển chip cho iPhone trong năm nay.
                        Tuy nhiên, do A16 Bionic đã có hiệu năng và hiệu suất rất tốt, việc này được cho là hợp lý. Điều quan trọng nhất là A17 Pro vẫn nhanh 
                        hơn các chip Android tốt nhất hiện nay.</p>
                </div>

                <!--                <div class="comment">
                                    <form >
                                        <input type="text"  placeholder="Điền comment của bạn vào đây nhé   "/>
                                    </form>
                                </div>-->
            </div>
        </div>
        <%@include file="../footer.jsp" %>
    </body>
</html>
