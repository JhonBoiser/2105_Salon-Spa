
package salon;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.swing.JOptionPane;


public class admin extends javax.swing.JFrame {

    
    public admin() {
        initComponents();
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jPanel1 = new javax.swing.JPanel();
        jPanel2 = new javax.swing.JPanel();
        logintxt = new javax.swing.JLabel();
        signintxt = new javax.swing.JLabel();
        username = new javax.swing.JTextField();
        usernametxt = new javax.swing.JLabel();
        pwtxt = new javax.swing.JLabel();
        logbtn = new javax.swing.JButton();
        password = new javax.swing.JPasswordField();
        jLabel2 = new javax.swing.JLabel();
        sstxt = new javax.swing.JLabel();
        bytriplejtxt = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("SALON AND SPA");
        setBackground(new java.awt.Color(255, 255, 255));
        setResizable(false);

        jPanel1.setBackground(new java.awt.Color(255, 255, 255));
        jPanel1.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jPanel2.setBackground(new java.awt.Color(229, 106, 179));
        jPanel2.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        logintxt.setFont(new java.awt.Font("Segoe UI Emoji", 1, 36)); // NOI18N
        logintxt.setText("LOG IN");
        jPanel2.add(logintxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 10, -1, 53));

        signintxt.setFont(new java.awt.Font("Segoe UI Emoji", 0, 14)); // NOI18N
        signintxt.setText("SIGN IN TO CONTINUE");
        jPanel2.add(signintxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 60, -1, -1));

        username.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 204), 5));
        username.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                usernameActionPerformed(evt);
            }
        });
        jPanel2.add(username, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 140, 210, 30));

        usernametxt.setFont(new java.awt.Font("Segoe UI Emoji", 0, 14)); // NOI18N
        usernametxt.setText("USERNAME");
        jPanel2.add(usernametxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 100, -1, 20));

        pwtxt.setFont(new java.awt.Font("Segoe UI Emoji", 0, 14)); // NOI18N
        pwtxt.setText("PASSWORD");
        jPanel2.add(pwtxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 200, -1, -1));

        logbtn.setFont(new java.awt.Font("Segoe UI Historic", 0, 14)); // NOI18N
        logbtn.setText("LOG IN");
        logbtn.setBorder(javax.swing.BorderFactory.createCompoundBorder());
        logbtn.setHorizontalTextPosition(javax.swing.SwingConstants.CENTER);
        logbtn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                logbtnActionPerformed(evt);
            }
        });
        jPanel2.add(logbtn, new org.netbeans.lib.awtextra.AbsoluteConstraints(160, 310, 80, 30));

        password.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 204, 204), 5));
        password.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                passwordActionPerformed(evt);
            }
        });
        jPanel2.add(password, new org.netbeans.lib.awtextra.AbsoluteConstraints(10, 240, 210, 30));

        jLabel2.setIcon(new javax.swing.ImageIcon("C:\\Users\\JHONLEI TORRES\\Downloads\\lg.jpg")); // NOI18N
        jPanel2.add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 320, -1));

        jPanel1.add(jPanel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 20, 320, 400));

        sstxt.setFont(new java.awt.Font("Segoe UI Emoji", 1, 36)); // NOI18N
        sstxt.setText("SALON AND SPA ");
        jPanel1.add(sstxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(550, 390, -1, 43));

        bytriplejtxt.setFont(new java.awt.Font("Segoe UI Emoji", 0, 18)); // NOI18N
        bytriplejtxt.setText("BY TRIPLE J");
        jPanel1.add(bytriplejtxt, new org.netbeans.lib.awtextra.AbsoluteConstraints(650, 440, -1, -1));

        jLabel1.setIcon(new javax.swing.ImageIcon("C:\\Users\\JHONLEI TORRES\\Downloads\\trylog.jpg")); // NOI18N
        jPanel1.add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 900, 500));

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addComponent(jPanel1, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
        );

        pack();
        setLocationRelativeTo(null);
    }// </editor-fold>//GEN-END:initComponents

    private void usernameActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_usernameActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_usernameActionPerformed
    
    
    private void logbtnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_logbtnActionPerformed
      try {     
        Class.forName("com.mysql.cj.jdbc.Driver");   
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/salondb", "root", ""); 
        String sql = "SELECT * FROM admin WHERE username = ? AND password = ?";
        PreparedStatement pst = con.prepareStatement(sql);
        pst.setString(1, username.getText());  
        pst.setString(2, password.getText());  
        ResultSet rs = pst.executeQuery();
        if (rs.next()) {
           
            mainGUI mainG = new mainGUI();
            mainG.setVisible(true);
            
            setVisible(false);
        } else {
            JOptionPane.showMessageDialog(null, "Invalid Username or Password");
            username.setText("");
            password.setText("");
        }    
        con.close();       
    } catch (Exception e) {   
        e.printStackTrace(); 
        JOptionPane.showMessageDialog(null, "Error: " + e.getMessage());
    }
    }//GEN-LAST:event_logbtnActionPerformed

    private void passwordActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_passwordActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_passwordActionPerformed

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(admin.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new admin().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel bytriplejtxt;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JPanel jPanel2;
    private javax.swing.JButton logbtn;
    private javax.swing.JLabel logintxt;
    private javax.swing.JPasswordField password;
    private javax.swing.JLabel pwtxt;
    private javax.swing.JLabel signintxt;
    private javax.swing.JLabel sstxt;
    private javax.swing.JTextField username;
    private javax.swing.JLabel usernametxt;
    // End of variables declaration//GEN-END:variables
}
