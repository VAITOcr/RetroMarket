  - -   - -   P o s t g r e S Q L   d a t a b a s e   d u m p   - -     - -   D u m p e d   f r o m   d a t a b a s e   v e r s i o n   1 7 . 2   - -   D u m p e d   b y   p g _ d u m p   v e r s i o n   1 7 . 2     S E T   s t a t e m e n t _ t i m e o u t   =   0 ;   S E T   l o c k _ t i m e o u t   =   0 ;   S E T   i d l e _ i n _ t r a n s a c t i o n _ s e s s i o n _ t i m e o u t   =   0 ;   S E T   t r a n s a c t i o n _ t i m e o u t   =   0 ;   S E T   c l i e n t _ e n c o d i n g   =   ' U T F 8 ' ;   S E T   s t a n d a r d _ c o n f o r m i n g _ s t r i n g s   =   o n ;   S E L E C T   p g _ c a t a l o g . s e t _ c o n f i g ( ' s e a r c h _ p a t h ' ,   ' ' ,   f a l s e ) ;   S E T   c h e c k _ f u n c t i o n _ b o d i e s   =   f a l s e ;   S E T   x m l o p t i o n   =   c o n t e n t ;   S E T   c l i e n t _ m i n _ m e s s a g e s   =   w a r n i n g ;   S E T   r o w _ s e c u r i t y   =   o f f ;     S E T   d e f a u l t _ t a b l e s p a c e   =   ' ' ;     S E T   d e f a u l t _ t a b l e _ a c c e s s _ m e t h o d   =   h e a p ;     - -   - -   N a m e :   c a r t _ i t e m s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . c a r t _ i t e m s   (           i d   i n t e g e r   N O T   N U L L ,           u s e r _ i d   i n t e g e r ,           p r o d u c t _ i d   i n t e g e r ,           a d d e d _ a t   t i m e s t a m p   w i t h o u t   t i m e   z o n e   D E F A U L T   C U R R E N T _ T I M E S T A M P   ) ;       A L T E R   T A B L E   p u b l i c . c a r t _ i t e m s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   c a r t _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . c a r t _ i t e m s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . c a r t _ i t e m s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   c a r t _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . c a r t _ i t e m s _ i d _ s e q   O W N E D   B Y   p u b l i c . c a r t _ i t e m s . i d ;       - -   - -   N a m e :   o r d e r _ i t e m s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . o r d e r _ i t e m s   (           i d   i n t e g e r   N O T   N U L L ,           o r d e r _ i d   i n t e g e r ,           p r o d u c t _ i d   i n t e g e r ,           p r i c e   n u m e r i c ( 1 0 , 2 )   ) ;       A L T E R   T A B L E   p u b l i c . o r d e r _ i t e m s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   o r d e r _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . o r d e r _ i t e m s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . o r d e r _ i t e m s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   o r d e r _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . o r d e r _ i t e m s _ i d _ s e q   O W N E D   B Y   p u b l i c . o r d e r _ i t e m s . i d ;       - -   - -   N a m e :   o r d e r s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . o r d e r s   (           i d   i n t e g e r   N O T   N U L L ,           u s e r _ i d   i n t e g e r ,           c r e a t e d _ a t   t i m e s t a m p   w i t h o u t   t i m e   z o n e   D E F A U L T   C U R R E N T _ T I M E S T A M P ,           s t a t u s   c h a r a c t e r   v a r y i n g ( 2 0 )   D E F A U L T   ' p e n d i n g ' : : c h a r a c t e r   v a r y i n g ,           a d d r e s s   t e x t ,           f i r s t _ n a m e   c h a r a c t e r   v a r y i n g ( 2 5 5 ) ,           l a s t _ n a m e   c h a r a c t e r   v a r y i n g ( 2 5 5 ) ,           p o s t a l _ c o d e   c h a r a c t e r   v a r y i n g ( 2 0 ) ,           p h o n e   c h a r a c t e r   v a r y i n g ( 2 0 )   ) ;       A L T E R   T A B L E   p u b l i c . o r d e r s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   o r d e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . o r d e r s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . o r d e r s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   o r d e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . o r d e r s _ i d _ s e q   O W N E D   B Y   p u b l i c . o r d e r s . i d ;       - -   - -   N a m e :   p a s s w o r d _ r e s e t s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . p a s s w o r d _ r e s e t s   (           i d   i n t e g e r   N O T   N U L L ,           u s e r _ i d   i n t e g e r ,           t o k e n   c h a r a c t e r   v a r y i n g ( 2 5 5 )   N O T   N U L L ,           e x p i r e s _ a t   t i m e s t a m p   w i t h o u t   t i m e   z o n e   N O T   N U L L ,           c r e a t e d _ a t   t i m e s t a m p   w i t h o u t   t i m e   z o n e   D E F A U L T   n o w ( )   ) ;       A L T E R   T A B L E   p u b l i c . p a s s w o r d _ r e s e t s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   p a s s w o r d _ r e s e t s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . p a s s w o r d _ r e s e t s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . p a s s w o r d _ r e s e t s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   p a s s w o r d _ r e s e t s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . p a s s w o r d _ r e s e t s _ i d _ s e q   O W N E D   B Y   p u b l i c . p a s s w o r d _ r e s e t s . i d ;       - -   - -   N a m e :   p r o d u c t s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . p r o d u c t s   (           i d   i n t e g e r   N O T   N U L L ,           t i t l e   c h a r a c t e r   v a r y i n g ( 2 5 5 )   N O T   N U L L ,           d e s c r i p t i o n   t e x t ,           p r i c e   n u m e r i c ( 1 0 , 2 )   N O T   N U L L ,           c a t e g o r y   c h a r a c t e r   v a r y i n g ( 1 0 0 )   N O T   N U L L ,           u s e r _ i d   i n t e g e r ,           c r e a t e d _ a t   t i m e s t a m p   w i t h o u t   t i m e   z o n e   D E F A U L T   C U R R E N T _ T I M E S T A M P ,           i m a g e   t e x t ,           i s _ a v a i l a b l e   b o o l e a n   D E F A U L T   t r u e   ) ;       A L T E R   T A B L E   p u b l i c . p r o d u c t s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   p r o d u c t s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . p r o d u c t s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . p r o d u c t s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   p r o d u c t s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . p r o d u c t s _ i d _ s e q   O W N E D   B Y   p u b l i c . p r o d u c t s . i d ;       - -   - -   N a m e :   u s e r s ;   T y p e :   T A B L E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   T A B L E   p u b l i c . u s e r s   (           i d   i n t e g e r   N O T   N U L L ,           e m a i l   c h a r a c t e r   v a r y i n g ( 2 5 5 )   N O T   N U L L ,           p a s s w o r d   c h a r a c t e r   v a r y i n g ( 2 5 5 )   N O T   N U L L ,           r o l e   c h a r a c t e r   v a r y i n g ( 5 0 )   D E F A U L T   ' u s e r ' : : c h a r a c t e r   v a r y i n g ,           u s e r n a m e   c h a r a c t e r   v a r y i n g ( 5 0 ) ,           p r e n o m   c h a r a c t e r   v a r y i n g ( 1 0 0 ) ,           n o m   c h a r a c t e r   v a r y i n g ( 1 0 0 ) ,           g e n r e   c h a r a c t e r   v a r y i n g ( 5 0 )   ) ;       A L T E R   T A B L E   p u b l i c . u s e r s   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   u s e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C R E A T E   S E Q U E N C E   p u b l i c . u s e r s _ i d _ s e q           A S   i n t e g e r           S T A R T   W I T H   1           I N C R E M E N T   B Y   1           N O   M I N V A L U E           N O   M A X V A L U E           C A C H E   1 ;       A L T E R   S E Q U E N C E   p u b l i c . u s e r s _ i d _ s e q   O W N E R   T O   p o s t g r e s ;     - -   - -   N a m e :   u s e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E   O W N E D   B Y ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   S E Q U E N C E   p u b l i c . u s e r s _ i d _ s e q   O W N E D   B Y   p u b l i c . u s e r s . i d ;       - -   - -   N a m e :   c a r t _ i t e m s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . c a r t _ i t e m s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . c a r t _ i t e m s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   N a m e :   o r d e r _ i t e m s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r _ i t e m s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . o r d e r _ i t e m s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   N a m e :   o r d e r s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . o r d e r s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   N a m e :   p a s s w o r d _ r e s e t s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p a s s w o r d _ r e s e t s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . p a s s w o r d _ r e s e t s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   N a m e :   p r o d u c t s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p r o d u c t s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . p r o d u c t s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   N a m e :   u s e r s   i d ;   T y p e :   D E F A U L T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . u s e r s   A L T E R   C O L U M N   i d   S E T   D E F A U L T   n e x t v a l ( ' p u b l i c . u s e r s _ i d _ s e q ' : : r e g c l a s s ) ;       - -   - -   D a t a   f o r   N a m e :   c a r t _ i t e m s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . c a r t _ i t e m s   ( i d ,   u s e r _ i d ,   p r o d u c t _ i d ,   a d d e d _ a t )   F R O M   s t d i n ;   \ .       - -   - -   D a t a   f o r   N a m e :   o r d e r _ i t e m s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . o r d e r _ i t e m s   ( i d ,   o r d e r _ i d ,   p r o d u c t _ i d ,   p r i c e )   F R O M   s t d i n ;   1 	 1 	 1 0 	 1 0 0 0 . 0 0   2 	 7 	 1 0 	 1 0 0 0 . 0 0   3 	 8 	 2 4 	 1 0 0 0 . 0 0   4 	 9 	 2 4 	 1 0 0 0 . 0 0   5 	 1 0 	 2 5 	 1 0 0 0 . 0 0   6 	 1 1 	 2 6 	 1 0 0 0 . 0 0   7 	 1 2 	 2 7 	 1 0 0 0 . 0 0   \ .       - -   - -   D a t a   f o r   N a m e :   o r d e r s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . o r d e r s   ( i d ,   u s e r _ i d ,   c r e a t e d _ a t ,   s t a t u s ,   a d d r e s s ,   f i r s t _ n a m e ,   l a s t _ n a m e ,   p o s t a l _ c o d e ,   p h o n e )   F R O M   s t d i n ;   1 	 1 	 2 0 2 5 - 0 4 - 0 3   2 0 : 4 8 : 2 3 . 3 3 3 4 5 8 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E A Z E 	 1 2 3 4 5 6 7 8 9   7 	 1 	 2 0 2 5 - 0 4 - 0 3   2 1 : 2 2 : 0 1 . 5 2 1 6 9 3 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E A Z E 	 1 2 3 4 5 6 7 8 9   8 	 1 	 2 0 2 5 - 0 4 - 0 3   2 1 : 4 3 : 1 2 . 0 1 5 0 3 1 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E R T Y U 	 1 2 3 4 5 6 7 8 9   9 	 1 	 2 0 2 5 - 0 4 - 0 3   2 1 : 5 2 : 1 6 . 3 5 6 8 7 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E A Z E 	 1 2 3 4 5 6 7 8 9   1 0 	 1 	 2 0 2 5 - 0 4 - 0 4   1 6 : 4 7 : 5 5 . 1 1 7 4 9 9 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E R T Y 	 1 2 3 4 5 6 7 8 9   1 1 	 1 	 2 0 2 5 - 0 4 - 0 4   1 7 : 1 5 : 0 6 . 6 9 7 4 1 2 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E R T Y 	 1 2 3 4 5 6 7 8 9   1 2 	 1 	 2 0 2 5 - 0 4 - 0 4   1 7 : 1 8 : 5 0 . 2 5 2 7 3 5 	 p e n d i n g 	 1 2 3   r u e   d u   r e t r o ,   Q u e b e c 	 A d a f a n g 	 F a n g a d a 	 A Z E R T Y 	 1 2 3 4 5 6 7 8 9   \ .       - -   - -   D a t a   f o r   N a m e :   p a s s w o r d _ r e s e t s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . p a s s w o r d _ r e s e t s   ( i d ,   u s e r _ i d ,   t o k e n ,   e x p i r e s _ a t ,   c r e a t e d _ a t )   F R O M   s t d i n ;   1 	 2 	 9 c d 1 1 4 c 9 - 5 8 7 e - 4 1 d c - 8 f 1 c - 7 e 9 9 a 3 4 a 1 b 2 b 	 2 0 2 5 - 0 4 - 0 1   2 0 : 3 1 : 5 8 . 2 3 4 	 2 0 2 5 - 0 4 - 0 1   1 9 : 3 1 : 5 8 . 2 4 0 1 2   2 	 2 	 f b e 1 4 1 9 f - c f 8 a - 4 c 8 b - b b 3 6 - c 6 3 3 3 a 6 7 7 7 e 5 	 2 0 2 5 - 0 4 - 0 1   2 0 : 4 3 : 0 7 . 0 4 7 	 2 0 2 5 - 0 4 - 0 1   1 9 : 4 3 : 0 7 . 0 5 0 0 7 7   3 	 2 	 5 f e 1 c b 7 a - c 3 3 d - 4 9 9 1 - 8 f 1 f - 1 0 c 1 e 8 7 5 7 0 2 1 	 2 0 2 5 - 0 4 - 0 1   2 0 : 4 6 : 0 0 . 9 1 2 	 2 0 2 5 - 0 4 - 0 1   1 9 : 4 6 : 0 0 . 9 1 4 5 4 3   4 	 2 	 b 1 e d d 7 e d - 3 8 5 5 - 4 9 4 b - 8 2 7 0 - 3 a 0 e 6 8 d 2 9 0 b 9 	 2 0 2 5 - 0 4 - 0 1   2 0 : 5 4 : 0 0 . 2 3 9 	 2 0 2 5 - 0 4 - 0 1   1 9 : 5 4 : 0 0 . 2 3 9 6 5   5 	 2 	 4 a e 9 9 3 2 c - b 0 d 5 - 4 a 3 1 - b 7 2 e - 1 8 3 0 1 e c 7 9 7 b 8 	 2 0 2 5 - 0 4 - 0 1   2 0 : 5 5 : 4 3 . 1 7 8 	 2 0 2 5 - 0 4 - 0 1   1 9 : 5 5 : 4 3 . 1 9 0 8 9 8   6 	 2 	 9 d 8 a 9 c 2 5 - 4 c e f - 4 a 3 9 - a 5 a f - c 7 7 3 0 e 3 d 3 a 5 5 	 2 0 2 5 - 0 4 - 0 1   2 0 : 5 9 : 4 6 . 8 2 8 	 2 0 2 5 - 0 4 - 0 1   1 9 : 5 9 : 4 6 . 8 4 2 0 6 7   \ .       - -   - -   D a t a   f o r   N a m e :   p r o d u c t s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . p r o d u c t s   ( i d ,   t i t l e ,   d e s c r i p t i o n ,   p r i c e ,   c a t e g o r y ,   u s e r _ i d ,   c r e a t e d _ a t ,   i m a g e ,   i s _ a v a i l a b l e )   F R O M   s t d i n ;   9 	 E a r t h b o u n d 	 j e u x   S n e s ,   o c c a s i o n ,   b o i t e   u n   p e u   a b i m %  ,   f o n c t i o n n e   t r e s   b i e n 	 2 7 5 0 . 0 0 	 S N E S 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / e a r t h b o u n d _ y 7 m 8 n 1 . j p g 	 t   2 6 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 4 - 0 4   1 7 : 0 0 : 5 7 . 5 4 9 3 2 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 f   1 0 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 f   2 7 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 4 - 0 4   1 7 : 1 8 : 1 8 . 9 4 3 0 4 4 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 f   2 4 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 4 - 0 3   2 1 : 4 2 : 3 5 . 1 5 7 2 4 4 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 f   1 	 D r e a m c a s t   +   j e u x 	 C o n s o l e   D r e a m c a s t   a v e c   2   m a n e t t e s   e t   5   j e u x   o r i g i n a u x . 	 4 5 0 . 3 3 	 C o n s o l e 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 1 9 / d r e a m c a s t _ a q w t y u . j p g 	 t   2 	 Z e l d a :   A   L i n k   t o   t h e   P a s t 	 C a r t o u c h e   S N E S   e n   e x c e l l e n t   %  t a t   a v e c   b o %  t e . 	 3 4 4 . 9 4 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 2 1 / z e l d a _ f y s b n b . j p g 	 t   3 	 R e s i d e n t   E v i l   1 	 V e r s i o n   P S 1 ,   c o m p l %  t e   a v e c   m a n u e l .   F o n c t i o n n e   p a r f a i t e m e n t . 	 8 9 . 5 8 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 2 0 / r e 1 _ h f 9 n r k . j p g 	 t   4 	 M a c h i n e   A r c a d e   T r o n 	 M a c h i n e   a r c a d e   c o l l e c t o r   e n   %  t a t   d e   f o n c t i o n n e m e n t . 	 8 7 9 9 . 9 9 	 A r c a d e 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 2 1 / T r o n _ p y 9 g d q . j p g 	 t   5 	 P o k %  m o n   C r y s t a l   J P 	 C a r t o u c h e   j a p o n a i s e ,   s a u v e g a r d e   f o n c t i o n n e l l e . 	 3 7 4 . 2 7 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 1 9 / c r i s t a l _ a v 5 s p 1 . j p g 	 t   6 	 S u i k o d e n   I I 	 R a r e   R P G   P S 1   e n   v e r s i o n   f r a n %  a i s e . 	 9 2 7 . 4 9 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 2 0 / s u i k o d e n _ 2 _ f u g e r w . j p g 	 t   7 	 D r a g o n   Q u e s t   I I I 	 V e r s i o n   F a m i c o m .   B o %  t e   +   m a n u e l   i n c l u s . 	 6 9 9 . 9 9 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 1 9 / d q 3 _ f a n i z q . j p g 	 t   8 	 C h r o n o   T r i g g e r   I I 	 V e r s i o n   f a n - m a d e   a v e c   d o u b l a g e   a n g l a i s . 	 2 9 9 . 9 9 	 J e u   V i d %  o 	 1 	 2 0 2 5 - 0 3 - 2 8   1 9 : 5 1 : 5 8 . 2 6 8 6 9 7 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 2 0 5 6 1 9 / c h r o n o _ z w k u 2 f . j p g 	 t   1 1 	 R u l e   o f   R o s e 	 N e u f   s o u s   b l i s t e r   J a p o n a i s 	 7 0 0 . 0 0 	 P S 2 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / r u l e o f r o s e _ h o 9 o x 2 . j p g 	 t   1 2 	 V a n d a l   H e a r t   I I 	 N e u f   s o u s   b l i s t e r ,   p o u r   c o l l e c t i o n n e u r 	 2 2 7 . 0 0 	 P S 1 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / v a n d a l h e a r t 2 _ v i x d m q . j p g 	 t   1 3 	 N i n t e n d o   6 4   P i k a c h u 	 O c c a s i o n ,   c o m p l e t e ,   f o n c t i o n n e   t r e s   b i e n 	 6 6 9 . 0 0 	 N 6 4 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / N 6 4 _ t e s h a 1 . j p g 	 t   1 4 	 S t e e l   B a t t a l i o n 	 C o m m e   n e u f ,   p a c k   c o m p l e t 	 5 9 0 . 0 0 	 X B O X 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / s t e e l b a t a l i o n _ i d t v f x . j p g 	 t   1 5 	 C a n o n   S p i k e 	 N e u f   V e r s i o n   J P ,   j e   g a r d e   l a   f i g u r i n e   : D 	 4 8 5 . 0 0 	 D r e a m c a s t 	 2 	 2 0 2 5 - 0 3 - 3 1   2 1 : 5 0 : 0 8 . 1 0 6 4 1 6 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / c a n o n s p i k e _ s m b x b n . w e b p 	 t   1 6 	 C a s t l e v a n i a :   S y m p h o n y   o f   t h e   N i g h t 	 V e r s i o n   o r i g i n a l e   P S 1 ,   c o m p l e t   a v e c   j a q u e t t e   e t   m a n u e l . 	 4 9 9 . 9 9 	 P S 1 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 6 / W h a t s A p p I m a g e 2 0 2 4 - 0 6 - 0 5 a t 1 4 . 4 1 . 5 7 _ 1 0 2 4 x 1 0 2 4 _ m 7 y 8 a d . w e b p 	 t   1 7 	 X e n o s a g a   I I I 	 V e r s i o n   P S 2   c o m p l %  t e   e n   t r %  s   b o n   %  t a t ,   r a r e . 	 3 4 9 . 9 9 	 P S 2 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / s - l 1 2 0 0 _ 1 _ j a z c g k . j p g 	 t   1 8 	 N e o   G e o 	 C o n s o l e   N e o   G e o   a v e c   b o i t e   o r i g i n a l e ,   f o n c t i o n n e   p a r f a i t e m e n t . 	 1 2 0 0 . 0 0 	 C o n s o l e 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / s - l 1 2 0 0 _ m s q c k e . j p g 	 t   1 9 	 T h e   W i t c h e r   2   C o l l e c t o r 	 V e r s i o n   c o l l e c t o r   s c e l l %  e ,   j a m a i s   o u v e r t e . 	 2 7 9 . 9 9 	 P C 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / T h e - W i t c h e r - 2 - A s s a s s i n s - o f - K i n g s - E n h a n c e d - E d i t i o n _ a s z 2 d a . w e b p 	 t   2 0 	 M e t a l   G e a r   S o l i d   2   C o l l e c t o r 	 P a c k   c o l l e c t o r   c o m p l e t   a v e c   f i g u r i n e   e t   b o n u s . 	 1 9 9 . 0 0 	 P S 2 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / m e t a l 2 _ g 6 p f c c . j p g 	 t   2 1 	 M e t a l   G e a r   S o l i d   1   C o l l e c t o r 	 V e r s i o n   c o l l e c t o r   c o m p l %  t e ,   d i s q u e   e t   b o %  t e   e n   t r %  s   b o n   %  t a t . 	 2 9 9 . 0 0 	 P S 1 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / 7 1 H U U i I J c c L _ m d v r k y . j p g 	 t   2 2 	 S t a d i u m   E v e n t s 	 C a r t o u c h e   N E S   u l t r a   r a r e ,   v e r s i o n   o r i g i n a l e . 	 8 9 9 9 . 0 0 	 N E S 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / s - l 4 0 0 _ c r d 1 k o . j p g 	 t   2 3 	 P o k e m o n   S a p h i r   R u b y   G a m e c u b e 	 P a c k   r a r e   G a m e C u b e   i n c l u a n t   l e s   j e u x   S a p h i r   &   R u b i s . 	 8 4 9 . 0 0 	 G a m e c u b e 	 3 	 2 0 2 5 - 0 4 - 0 1   2 1 : 3 3 : 1 8 . 8 7 8 6 4 9 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 5 5 7 1 5 5 / s - l 4 0 0 _ 1 _ t 9 b 3 h c . j p g 	 t   2 5 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 4 - 0 4   1 6 : 0 6 : 5 6 . 3 5 7 1 1 2 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 f   2 8 	 M u s h a 	 O c c a s i o n   p r e s q u e   n e u f   b o i t e   +   m a n u e l   +   j e u ,   p a r f a i t   p o u r   c o l l e c t i o n 	 1 0 0 0 . 0 0 	 M e g a d r i v e 	 2 	 2 0 2 5 - 0 4 - 0 4   1 7 : 2 0 : 2 7 . 8 6 0 3 3 5 	 h t t p s : / / r e s . c l o u d i n a r y . c o m / d p a h d 7 i 2 c / i m a g e / u p l o a d / v 1 7 4 3 4 6 9 2 0 7 / m u s h a _ e u 7 o w t . j p g 	 t   \ .       - -   - -   D a t a   f o r   N a m e :   u s e r s ;   T y p e :   T A B L E   D A T A ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     C O P Y   p u b l i c . u s e r s   ( i d ,   e m a i l ,   p a s s w o r d ,   r o l e ,   u s e r n a m e ,   p r e n o m ,   n o m ,   g e n r e )   F R O M   s t d i n ;   1 	 t e r e n c e . s i o n n e a u @ g m a i l . c o m 	 $ 2 b $ 1 0 $ s n D 3 V w 2 p 6 J W k W 6 d D W c p h Y . x g k P / / P 9 Q H A Q g I Q u 3 s w g C 1 n m U p s X P v K 	 a d m i n 	 a d m i n 	 T e r e n c e 	 S i o n n e a u 	 h o m m e   2 	 i m a d a f a n g @ g m a i l . c o m 	 $ 2 b $ 1 0 $ u v G S n o o 4 q 6 D / 9 . 4 q k D n u j u U X 2 4 R u p a V 0 a q I Q 6 H P A b 9 g g f 0 N V 9 2 . / y 	 u s e r 	 A d a f a n g 	 A d a 	 F a n g 	 f e m m e   3 	 i z o k h a @ l i v e . f r 	 $ 2 b $ 1 0 $ Z Y M 3 z P r W q M C q C X V v s i / x n O 0 l Z Z v R a 0 v 7 5 x P Q D D 8 R . N 1 G 8 F V X R w x m . 	 u s e r 	 K i l l u a 4 1 	 K i l l u a 	 Z o l d i c k 	 h o m m e   \ .       - -   - -   N a m e :   c a r t _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . c a r t _ i t e m s _ i d _ s e q ' ,   2 1 ,   t r u e ) ;       - -   - -   N a m e :   o r d e r _ i t e m s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . o r d e r _ i t e m s _ i d _ s e q ' ,   7 ,   t r u e ) ;       - -   - -   N a m e :   o r d e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . o r d e r s _ i d _ s e q ' ,   1 2 ,   t r u e ) ;       - -   - -   N a m e :   p a s s w o r d _ r e s e t s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . p a s s w o r d _ r e s e t s _ i d _ s e q ' ,   7 ,   t r u e ) ;       - -   - -   N a m e :   p r o d u c t s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . p r o d u c t s _ i d _ s e q ' ,   2 8 ,   t r u e ) ;       - -   - -   N a m e :   u s e r s _ i d _ s e q ;   T y p e :   S E Q U E N C E   S E T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     S E L E C T   p g _ c a t a l o g . s e t v a l ( ' p u b l i c . u s e r s _ i d _ s e q ' ,   3 ,   t r u e ) ;       - -   - -   N a m e :   c a r t _ i t e m s   c a r t _ i t e m s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . c a r t _ i t e m s           A D D   C O N S T R A I N T   c a r t _ i t e m s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   o r d e r _ i t e m s   o r d e r _ i t e m s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r _ i t e m s           A D D   C O N S T R A I N T   o r d e r _ i t e m s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   o r d e r s   o r d e r s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r s           A D D   C O N S T R A I N T   o r d e r s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   p a s s w o r d _ r e s e t s   p a s s w o r d _ r e s e t s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p a s s w o r d _ r e s e t s           A D D   C O N S T R A I N T   p a s s w o r d _ r e s e t s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   p r o d u c t s   p r o d u c t s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p r o d u c t s           A D D   C O N S T R A I N T   p r o d u c t s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   u s e r s   u s e r s _ e m a i l _ k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . u s e r s           A D D   C O N S T R A I N T   u s e r s _ e m a i l _ k e y   U N I Q U E   ( e m a i l ) ;       - -   - -   N a m e :   u s e r s   u s e r s _ p k e y ;   T y p e :   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . u s e r s           A D D   C O N S T R A I N T   u s e r s _ p k e y   P R I M A R Y   K E Y   ( i d ) ;       - -   - -   N a m e :   c a r t _ i t e m s   c a r t _ i t e m s _ p r o d u c t _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . c a r t _ i t e m s           A D D   C O N S T R A I N T   c a r t _ i t e m s _ p r o d u c t _ i d _ f k e y   F O R E I G N   K E Y   ( p r o d u c t _ i d )   R E F E R E N C E S   p u b l i c . p r o d u c t s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   N a m e :   c a r t _ i t e m s   c a r t _ i t e m s _ u s e r _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . c a r t _ i t e m s           A D D   C O N S T R A I N T   c a r t _ i t e m s _ u s e r _ i d _ f k e y   F O R E I G N   K E Y   ( u s e r _ i d )   R E F E R E N C E S   p u b l i c . u s e r s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   N a m e :   o r d e r _ i t e m s   o r d e r _ i t e m s _ o r d e r _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r _ i t e m s           A D D   C O N S T R A I N T   o r d e r _ i t e m s _ o r d e r _ i d _ f k e y   F O R E I G N   K E Y   ( o r d e r _ i d )   R E F E R E N C E S   p u b l i c . o r d e r s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   N a m e :   o r d e r _ i t e m s   o r d e r _ i t e m s _ p r o d u c t _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r _ i t e m s           A D D   C O N S T R A I N T   o r d e r _ i t e m s _ p r o d u c t _ i d _ f k e y   F O R E I G N   K E Y   ( p r o d u c t _ i d )   R E F E R E N C E S   p u b l i c . p r o d u c t s ( i d ) ;       - -   - -   N a m e :   o r d e r s   o r d e r s _ u s e r _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . o r d e r s           A D D   C O N S T R A I N T   o r d e r s _ u s e r _ i d _ f k e y   F O R E I G N   K E Y   ( u s e r _ i d )   R E F E R E N C E S   p u b l i c . u s e r s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   N a m e :   p a s s w o r d _ r e s e t s   p a s s w o r d _ r e s e t s _ u s e r _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p a s s w o r d _ r e s e t s           A D D   C O N S T R A I N T   p a s s w o r d _ r e s e t s _ u s e r _ i d _ f k e y   F O R E I G N   K E Y   ( u s e r _ i d )   R E F E R E N C E S   p u b l i c . u s e r s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   N a m e :   p r o d u c t s   p r o d u c t s _ u s e r _ i d _ f k e y ;   T y p e :   F K   C O N S T R A I N T ;   S c h e m a :   p u b l i c ;   O w n e r :   p o s t g r e s   - -     A L T E R   T A B L E   O N L Y   p u b l i c . p r o d u c t s           A D D   C O N S T R A I N T   p r o d u c t s _ u s e r _ i d _ f k e y   F O R E I G N   K E Y   ( u s e r _ i d )   R E F E R E N C E S   p u b l i c . u s e r s ( i d )   O N   D E L E T E   C A S C A D E ;       - -   - -   P o s t g r e S Q L   d a t a b a s e   d u m p   c o m p l e t e   - -     