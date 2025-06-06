import 'package:flutter/material.dart';

class LotifyLoginPage extends StatefulWidget {
  @override
  _LotifyLoginPageState createState() => _LotifyLoginPageState();
}

class _LotifyLoginPageState extends State<LotifyLoginPage> {
  bool _obscurePassword = true;
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 32, vertical: 64),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 로고 섹션
              Container(
                margin: EdgeInsets.only(bottom: 48),
                child: Column(
                  children: [
                    Container(
                      width: 128,
                      height: 64,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            blurRadius: 8,
                            offset: Offset(0, 4),
                          ),
                        ],
                        border: Border.all(color: Color(0xFFE2E8F0)),
                      ),
                      child: Center(
                        child: Text(
                          'Lotify',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Color(0xFF2D3748),
                            letterSpacing: 1.2,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // 로그인 폼
              Column(
                children: [
                  // 이메일 입력
                  Container(
                    margin: EdgeInsets.only(bottom: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '이메일',
                          style: TextStyle(
                            color: Color(0xFF2D3748),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE2E8F0)),
                          ),
                          child: TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              hintText: 'lotify@naver.com',
                              hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
                              prefixIcon: Icon(
                                Icons.email_outlined,
                                color: Color(0xFF9CA3AF),
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, 
                                vertical: 16
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xFF2D3748),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // 비밀번호 입력
                  Container(
                    margin: EdgeInsets.only(bottom: 32),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '비밀번호',
                          style: TextStyle(
                            color: Color(0xFF2D3748),
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 12),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12),
                            border: Border.all(color: Color(0xFFE2E8F0)),
                          ),
                          child: TextFormField(
                            controller: _passwordController,
                            obscureText: _obscurePassword,
                            decoration: InputDecoration(
                              hintText: '비밀번호를 입력하세요',
                              hintStyle: TextStyle(color: Color(0xFF9CA3AF)),
                              prefixIcon: Icon(
                                Icons.lock_outline,
                                color: Color(0xFF9CA3AF),
                              ),
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _obscurePassword 
                                    ? Icons.visibility_off 
                                    : Icons.visibility,
                                  color: Color(0xFF9CA3AF),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _obscurePassword = !_obscurePassword;
                                  });
                                },
                              ),
                              border: InputBorder.none,
                              contentPadding: EdgeInsets.symmetric(
                                horizontal: 16, 
                                vertical: 16
                              ),
                            ),
                            style: TextStyle(
                              color: Color(0xFF2D3748),
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              // 로그인 버튼
              Container(
                width: double.infinity,
                height: 56,
                margin: EdgeInsets.only(bottom: 24),
                child: ElevatedButton(
                  onPressed: () {
                    // 로그인 로직
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFFDCEEFF),
                    foregroundColor: Color(0xFF2D3748),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    '로그인',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              // 비밀번호 찾기
              TextButton(
                onPressed: () {
                  // 비밀번호 찾기 로직
                },
                child: Text(
                  '비밀번호 찾기',
                  style: TextStyle(
                    color: Color(0xFF3182CE),
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
              ),

              SizedBox(height: 48),

              // SNS 로그인 섹션
              Column(
                children: [
                  Text(
                    'SNS LOGIN',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildSnsButton(
                        color: Color(0xFFFEE500),
                        child: Text(
                          'Talk',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      _buildSnsButton(
                        color: Color(0xFF03C75A),
                        child: Text(
                          'N',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      SizedBox(width: 16),
                      _buildSnsButton(
                        color: Colors.white,
                        child: Icon(
                          Icons.g_mobiledata,
                          color: Color(0xFF4285F4),
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: 32),

              // 회원가입 링크
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '계정이 없으신가요? ',
                    style: TextStyle(
                      color: Color(0xFF6B7280),
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      // 회원가입 페이지로 이동
                    },
                    child: Text(
                      '회원가입',
                      style: TextStyle(
                        color: Color(0xFF3182CE),
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32),

              // 하단 핸들
              Container(
                width: 48,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xFFD1D5DB),
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSnsButton({required Color color, required Widget child}) {
    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
        border: color == Colors.white 
          ? Border.all(color: Color(0xFFE2E8F0)) 
          : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Center(child: child),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
