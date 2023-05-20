# Thuc_Tap_Co_So_PTIT
## Website bán giày cơ bản
## Phân chia chức năng

Website phân chia thành các thành phần con để quản lý chức năng tương ứng. Dưới đây là một ví dụ cụ thể về cách phân chia các module bổ sung trong một trang web bán hàng đơn giản bằng Java Servlet:

## Module Đăng nhập và Đăng ký (auth):

- Servlets: LoginServlet, RegistrationServlet để xử lý yêu cầu đăng nhập và đăng ký từ người dùng.
- Model: User lưu trữ thông tin người dùng như tên, email, mật khẩu, v.v.
- View: login.jsp, register.jsp để hiển thị các biểu mẫu đăng nhập và đăng ký cho người dùng.

## Module Giỏ hàng và Thanh toán (checkout):

- Servlets: CartServlet, CheckoutServlet để thêm sản phẩm vào giỏ hàng, cập nhật giỏ hàng và xử lý thanh toán.
- Model: Cart lưu trữ thông tin về các mục trong giỏ hàng như sản phẩm, số lượng, giá, v.v.
- View: cart.jsp, checkout.jsp để hiển thị giỏ hàng và giao diện thanh toán.

## Module Hiển thị danh sách sản phẩm và chi tiết sản phẩm:

- Servlets: ProductListServlet, ProductDetailServlet để lấy danh sách sản phẩm và chi tiết sản phẩm từ cơ sở dữ liệu.
- Model: Product lưu trữ thông tin về sản phẩm như tên, mô tả, giá, v.v.
- View: product\_list.jsp, product\_detail.jsp để hiển thị danh sách sản phẩm và chi tiết sản phẩm.

## Module Xem và cập nhật thông tin đơn hàng:

- Servlets: OrderListServlet, OrderDetailServlet để lấy danh sách đơn hàng và chi tiết đơn hàng từ cơ sở dữ liệu.
- Model: Order lưu trữ thông tin về đơn hàng như số đơn hàng, ngày đặt hàng, sản phẩm, v.v.
- View: order\_list.jsp, order\_detail.jsp để hiển thị danh sách đơn hàng và chi tiết đơn hàng.

## Module Tìm kiếm sản phẩm:

- Servlet: SearchServlet để xử lý yêu cầu tìm kiếm sản phẩm dựa trên từ khóa.
- Model: Không có model đặc biệt, sử dụng các phương thức trong Product để tìm kiếm và sắp xếp sản phẩm.
- View: search.jsp để hiển thị kết quả tìm kiếm và tùy chọn sắp xếp.

## **Module Quản trị:**

Servlets: AdminProductServlet, AdminOrderServlet, AdminUserServlet để thực hiện các thao tác quản trị như:

## Quản lý sản phẩm:

- AdminProductServlet để hiển thị danh sách sản phẩm, thêm, sửa, xóa sản phẩm.
- Model: Product để lưu trữ thông tin về sản phẩm.

- View: admin\_product\_list.jsp, admin\_product\_form.jsp để hiển thị danh sách sản phẩm và biểu mẫu quản lý sản phẩm.

## Quản lý đơn hàng:

- AdminOrderServlet để hiển thị danh sách đơn hàng, xem chi tiết đơn hàng, cập nhật trạng thái đơn hàng.
- Model: Order để lưu trữ thông tin về đơn hàng.
- View: admin\_order\_list.jsp, admin\_order\_detail.jsp để hiển thị danh sách đơn hàng và chi tiết đơn hàng.

## Quản lý người dùng:

- AdminUserServlet để hiển thị danh sách người dùng, xem chi tiết người dùng, cập nhật thông tin người dùng.
- Model: User để lưu trữ thông tin về người dùng.
- View: admin\_user\_list.jsp, admin\_user\_detail.jsp để hiển thị danh sách người dùng và chi tiết người dùng.

Bằng cách phân chia website thành các module như trên, chúng ta có thể tạo ra các lớp Servlet riêng biệt để xử lý các yêu cầu tương ứng từ người dùng, và tạo các lớp Model và View tương ứng để quản lý dữ liệu và hiển thị giao diện người dùng. Việc này giúp mã nguồn trở nên dễ hiểu, bảo trì và mở rộng.

Nguyễn Hoàng Việt
