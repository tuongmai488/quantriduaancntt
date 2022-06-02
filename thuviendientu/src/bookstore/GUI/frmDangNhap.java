
package bookstore.GUI;

import bookstore.BLL.LoginBLL;
import bookstore.BLL.NguoiDungBLL;
import bookstore.Entity.NguoiDung;
import java.util.ArrayList;
import javax.swing.ImageIcon;
import javax.swing.JOptionPane;


public class frmDangNhap extends javax.swing.JFrame {

    public static String taiKhoan = "";

    LoginBLL obj = new LoginBLL();
    NguoiDungBLL objnd = new NguoiDungBLL();

    public frmDangNhap() {
        initComponents();
         setIconImage(new ImageIcon(getClass().getResource("imgs/library.png")).getImage());
        setRememberUser();
    }

    void setRememberUser() {
        ArrayList<NguoiDung> lst = new ArrayList<>();
        lst = objnd.getAll("", "taiKhoan like '@root:%'", "");
        if (lst.isEmpty()) {
            txtTaiKhoan.setText("");
            pwMatKhau.setText("");
        } else {
            txtTaiKhoan.setText(lst.get(0).getTaiKhoan().substring(6));
            pwMatKhau.setText(lst.get(0).getMatKhau());
        }
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        btnDangNhap = new javax.swing.JButton();
        btnHuy = new javax.swing.JButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        txtTaiKhoan = new javax.swing.JTextField();
        pwMatKhau = new javax.swing.JPasswordField();
        ckbNhoDN = new javax.swing.JCheckBox();
        jLabel3 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Đăng Nhập");
        setLocation(new java.awt.Point(250, 50));
        setResizable(false);
        addFocusListener(new java.awt.event.FocusAdapter() {
            public void focusGained(java.awt.event.FocusEvent evt) {
                formFocusGained(evt);
            }
        });
        addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                formKeyPressed(evt);
            }
        });

        btnDangNhap.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnDangNhap.setText("Đăng Nhập");
        btnDangNhap.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnDangNhapActionPerformed(evt);
            }
        });
        btnDangNhap.addKeyListener(new java.awt.event.KeyAdapter() {
            public void keyPressed(java.awt.event.KeyEvent evt) {
                btnDangNhapKeyPressed(evt);
            }
        });

        btnHuy.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        btnHuy.setText("Hủy");
        btnHuy.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                btnHuyActionPerformed(evt);
            }
        });

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel1.setText("Tài Khoản");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("Mật Khẩu");

        txtTaiKhoan.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        txtTaiKhoan.setText("admin");

        pwMatKhau.setText("admin");

        ckbNhoDN.setSelected(true);
        ckbNhoDN.setText("Nhớ đăng nhập");

        jLabel3.setBackground(new java.awt.Color(102, 153, 255));
        jLabel3.setIcon(new javax.swing.ImageIcon(getClass().getResource("/bookstore/GUI/imgs/istockphoto-1235586543-612x612.jpg"))); // NOI18N

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(36, 36, 36)
                        .addComponent(jLabel3)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(63, 63, 63)
                                .addComponent(btnDangNhap)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(btnHuy)
                                .addGap(11, 11, 11))
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addComponent(ckbNhoDN)
                                .addGap(132, 132, 132))))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(412, 412, 412)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel2)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 23, Short.MAX_VALUE)
                                .addComponent(pwMatKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 267, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(18, 18, 18)
                                .addComponent(txtTaiKhoan)))))
                .addContainerGap(86, Short.MAX_VALUE))
        );

        layout.linkSize(javax.swing.SwingConstants.HORIZONTAL, new java.awt.Component[] {btnDangNhap, btnHuy});

        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(txtTaiKhoan, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(pwMatKhau, javax.swing.GroupLayout.PREFERRED_SIZE, 28, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addComponent(ckbNhoDN)
                .addGap(21, 21, 21)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(btnDangNhap, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(btnHuy, javax.swing.GroupLayout.PREFERRED_SIZE, 35, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(115, 115, 115))
            .addGroup(layout.createSequentialGroup()
                .addGap(45, 45, 45)
                .addComponent(jLabel3)
                .addContainerGap(75, Short.MAX_VALUE))
        );

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {btnDangNhap, btnHuy});

        layout.linkSize(javax.swing.SwingConstants.VERTICAL, new java.awt.Component[] {pwMatKhau, txtTaiKhoan});

        pack();
    }// </editor-fold>//GEN-END:initComponents

    void checkLogin() {
        String u = txtTaiKhoan.getText();
        String p = new String(pwMatKhau.getPassword());
        if (obj.getLogin(u, p)) {
            taiKhoan = txtTaiKhoan.getText();
           
            frmHeThong frm = new frmHeThong();
            frm.setVisible(true);
            this.setVisible(false);
            if (ckbNhoDN.isSelected()) {
                NguoiDung save = new NguoiDung();
                save.setTaiKhoan(u);
                save.setMatKhau(p);
                boolean x = objnd.updateDataSave(save);
                if(!x){
                    save.setTaiKhoan("@root:" + u);
                    objnd.insertData(save);
                }
            }else{
                objnd.deleteDataSave();
            }
        } else {
            txtTaiKhoan.setText("");
            pwMatKhau.setText("");
            txtTaiKhoan.requestFocus();
            JOptionPane.showMessageDialog(this, "Sai tài khoản hoặc mật khẩu!");
        }
    }

    private void btnDangNhapActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnDangNhapActionPerformed

        checkLogin();
    }//GEN-LAST:event_btnDangNhapActionPerformed

    private void btnHuyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_btnHuyActionPerformed
       
        System.exit(0);
    }//GEN-LAST:event_btnHuyActionPerformed

    private void formKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_formKeyPressed
        
    }//GEN-LAST:event_formKeyPressed

    private void formFocusGained(java.awt.event.FocusEvent evt) {//GEN-FIRST:event_formFocusGained
       
    }//GEN-LAST:event_formFocusGained

    private void btnDangNhapKeyPressed(java.awt.event.KeyEvent evt) {//GEN-FIRST:event_btnDangNhapKeyPressed
       
    }//GEN-LAST:event_btnDangNhapKeyPressed

    
    public static void main(String args[]) {
        
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new frmDangNhap().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton btnDangNhap;
    private javax.swing.JButton btnHuy;
    private javax.swing.JCheckBox ckbNhoDN;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPasswordField pwMatKhau;
    private javax.swing.JTextField txtTaiKhoan;
    // End of variables declaration//GEN-END:variables
}
