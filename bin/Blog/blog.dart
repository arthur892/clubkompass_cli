import 'blogPost.dart';

class Blog {
  List<String> pictures = [];
  List<blogPost> posts = [];

  Blog() {
    pictures.add("""
                &&&&&&&&&                                                      
               @           @                                                    
               @           @                                                    
      @&   @@@               @@@   @@                                           
    (@                               @.                                         
   &@            @@@@@@@@@            @@@@@                                     
  @@           @&         @@      @@@       @@@                                 
    &@@      @@             & @@@      @@%      @@@                             
     %@      @@           @@&      &@@     @@(      @@@                         
   ,@@@       @       @@@      (@@            ,@@,      @@@                     
  @@           @( &@@      .@@.       .@/@        (@@       &@@                 
   @@         @@@       @@*        @@(     @@@        %@@       @@@             
     @/   @@@       &@%        &@&             @@@        @@@       @@@         
      @@#       @@@        @@@                     @@@        &@@       /@&     
   @@       @@/        @@@                             @@@        @@@       @@  
        @@@         @&                                     @@         @@@       
    @@& @                                                               @ &@@   
        @                                                               @       
        @                                                               @       
        @                                                               @       
        @                                                               @       
        @                                                               @       
        @                                                               @       
        @          @@       @       /@           @           &@         @       
        @          @@       @       /@           @           @/         @       
        @          @@       @       /@           @           @@         @       
        @          @@.......@......./@           @           @@         @       
        @          @@               /@           &           @@         @       
        @          @@               /@           @           @@         @       
        @          @@               /@           @           @@         @       
        @          @@&@@@@@@@@@@@@@@@@           @           @@         @       
        @                                        @           @@         @       
        @                                        @           @@         @       
        @                                        @           @@         &       
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@@@@/( @ @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@%%@%%@#&@@@""");
    pictures.add("""
                                                                                
                                                                                
                                                 .((((((((((((                  
                                              *(/****....*(((##&.               
                                          ./#((**,   (#,  .(%&,./               
                                           (/***,.   ,,.  .#*....*.             
                                         /#(/***,.      .#%#%/...,,             
                                         ((((*****......%%%#&@*,,,.             
                                        ,#%&%*%/***%%((/%&#/. ,((,              
                                      ./(((((#%%%%%%#%&&%%    (.                
                                   .((((##(((%(#%%%%#/%%&%%/                    
                                 ((((((((((#((#%/%%%#,*%%%%(&.                  
                              .#(####((((%(#%##%*.,,,,,#%%/*%&                  
                             **/(((/*(((((**/#(**...,##%%(*(&&*                 
                           .,***,,*********,.,..,,,,/#(#(**%%%,                 
                          .,,..,,.,,,..,..,*,.,.,(###(#(/(&%(,                  
                        ,/*,,/,.,,,,.*,,*##,*#*#%%((%#(*(&&%,                   
                       ,/#(((,,*,,,(%(%##(((#(((%#%%&&%&%&%,                    
                      ,((((((((((/(((/##(((#((#%&&&%&&&&*/                      
                     .((((((#(((#(((#%((((%((%&&&%%%&&/                         
                     (##((%#/#%#((#%#(/#%%#%&&&&&%&..                           
                    #%#%%%%&%#(%%%##%%&%&&&&&%%&&,                              
                    ,#/((/&%&&&&&&&&&&   #&%%(&&.                               
                   ,,*//#%#%%&&#&%&&(   ,(####%%&&&@*                           
                 .**/(###%%%&%#%%%%,   .      .##* (%#                          
               .*/(#%(##%%&&##%%%#              *@   *                          
                    ##%&&.&##%%%,                .          """);
    pictures.add("""
                                                  *@                            
                                     #@@@%/***@@/@                              
                              &@%***/@&**#@**&#@                            *@@@
                          *@****@%***@/**@**/@                      %@@******@  
                        *@**@(***@/**@**@/*@*                   @%*****@@***@   
                  *@@@@@#*. @&*/(%@@@@@@(*@                  @/****#@******@    
              @#******&/      *&******@    .@*%@@         ,@****(@********/@    
           @/***********@       @******@     ,@****@,   ,@****@%****%@****&.    
        %@***************@      .@******@      @*****%&@****@/***(@******#(     
      @%*****@@@(********#/      @******/@     #(******@**%%***@(*******@       
    @(****(* @@@@ @*******@      .&******@      @*******@************@@         
  @(******@*&@@.@@@*******@       @******&.     @*******%#*******%@             
%(*********@&&@@@@/*******@       @******%*     @*******@**********@#           
 @************************@       &******%,     @******%(*%#*********/@         
 @************************@      @*******@      @*****@****@/***/@******@       
 @/**********************/#      @*******@     %(***@,%#****&#****%@*****@      
    @@(******************@      %*******&,    .@*(@     @*****@*****@(***#(     
        &@**************&*     ,&******(#    /@@.         @****(@*****@***@     
           #@**********%(     .@******/&   @@              .@*****@*****@*%/    
               @@@/***&.     *&******@@@****%(                @@****(@*****@    
                          (%*********/****&**/@                  ,@@***/****@   
                            @%**@**%/***%/**%/*@,                      ,@@@@@@& 
                               @@**@**&#***@/**@/@                              
                                    #@@@/#@***@***/@                            
                                              .&@@@@@@(                         
""");
    pictures.add("""
                                                                                
                                                                                
                                                   /////#                       
                                        //////////   /////#                     
                                         ####### ##////////#      /.////        
                                     #/////////////###/////#  ///#/#######//    
                                        /// //////////#///#//### ///////,       
                                     /////#########////#//##///##########(/     
                    /               /##               //////##/(###/////        
                ******...***//***                    //***      ##///####//     
             .  ..*.....,*/////**////*               ////          ##/// ##/    
          *..***....******.*****////**//            %/**             #///   /   
        . .....*******....**/////*****//           ///**              #///      
      ********.........***///********,             /#%#                #/       
    ..........***********////                     //***                         
     .........,*****   /                          ///*                          
                       /                         ///**                          
                                            **,, ///**                          
                        ,                ,***..*..****                          
                                      **, *.,*,.*****                           
                         *         ** /**..*,** /##%#                           
             ,,,,,              ****...**.*** *///***                           
      *,,/   ,..,,     .......*****....,**     *//##(     %...,.,               
     ***..*  ,,,,.       **/  ********   /    //*****    .......                
      *.,,,. .,,,.    **,,,,,,,,,,*,,***,,/,,,///*/***   .,.,,%.                
       .*,,,/,,*,,,*,,,,,,,,,,**,,,,,,,,,,,,****//*/*****, ..,,.                
          ,,,,,,,,,,,,,,,,,**,,,,,,,,,,,,,,,,,,,,,,,,,****./,.,****             
        ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,******...*****             
                       ,,,,,,,,,,,,,,,,,,,,,,,,,**************.                 
                                                                                
                                                                                """);
    pictures.add("""
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                            %@@@@@@@@....../@@@@@@@@                            
                            @/                     @%                           
                            @/                     @%                           
                            @/                     @%                           
                  .@%       @/                     @%       @&                  
                 @@,        @/                     @%        %@&                
               ,@@   .@@    @/                     @%   /@@    @@               
               @@   *@&     @/                     @%     @@    @@              
              (@.   @@      @/                     @%     .@%   @@.             
              #@    @@      @/                     @%      @&   @@.             
              .@@   (@*     @/                     @%     @@.   @@              
               (@#   (@@    @/                     @%   .@@    @@               
                .@@    *,   @/                     @%   (.   *@@                
                  (@&       @/                     @%       @@.                 
                            @/                     @%                           
                            @/                     @%                           
                            @%(((((((((((((((((((((@%                           
                            @@@@@@@@@@#   @@@@@@@@@@#                           
                             &@@@@@@@@@@@@@@@@@@@@@/                            
                                                                                
                                                                                
                                 ..............                                 
                                                                                
                                                                                
                                                                                """);
    pictures.add("""
                                                                                
                                                                                
%@(  /@%   @/                                                                @@@
@@#  #@@  *@@                                                             &@@(@@
@@#  #@@  *@@                                                           /@@,..@@
@@#  #@@  *@@                 (@@@@@@@&&&&&&@@@@@@@#                   %@@....@@
@@@@@@@@@@@@@            ,@@@@(....................(@@@@,             .@@.....@@
@@#......./@@          %@@*....*@@@@@@@@@@@@@@@@@@*....*@@@,          &@%.....@@
@@#......./@@       %@.....*@@@&.                .&@@@*...*@@&        &@#.....@@
 @@@.....#@@*     %@@....@@@*                        ,@@@...,@@%      &@#.....@@
   @@*,,@@,      @@#...@@@                              @@@...#@@     &@#.....@@
   @@&#%@@      @@*..(@@                                 .@@(..,@@.   &@#.....@@
   @@%,/@@     @@*..#@@                                    @@#..,@@   &@#.....@@
   @@%,/@@    #@@..*@@                                      @@*..&@#  &@#.....@@
   @@%,/@@    @@,..&@%                                      %@&..,@@  &@#.....@@
   @@%,/@@    @@...@@*                                      /@@...@@  ,@@@%%%&@@
   @@#,/@@    @@,..&@&                                      %@&..*@@     ,@@,,@@
   @@(,*@@    (@@..,@@                                      @@,..@@#     ,@@,,@@
   @@/,*@@     @@/..(@@                                    @@(../@@      ,@@,,@@
   @@*,,@@      @@/..*@@,                                ,@@*..*@@       /@@,,@@
   @@,,,@@       @@&...@@@                              @@@...&@@        %@&,,@@
  .@@,,,@@*       *@@/...&@@%                        %@@&.../@@/         @@/,,@@
  /@@,,,%@&         /@@%....@@@@#                #@@@@......,,           @@,,,@@
  %@&,,,(@@            @@@%.....(@@@@@@@@@@@@@@@@(.....#@@@             /@@,,,@@
  @@*,,,,@@               &@@@&,..................,&@@@&                %@&,,,@@
  @@,,,,,@@.                  .&@@@@@@@@@@@@@@@@@@&.                    @@*,,,@@
 .@@,,,,,@@/                                                            @@,,,,@@
  @@%,,,(@@                                                             @@*,,/@@
    @@@@@.                                                               %@@@@% 
                                                                                
                                                                                """);
    pictures.add("""
                                                                                
                                                                                
                                                                                
                                    *,                                          
                       **           ,*             *.                           
                        **           *    **     **                             
                         ,*.    *    ,    *,    **                              
                           *.                      .**                          
              ,**    **         ,,,,,,,,,,,,      *.                            
                 ,**        ,,,,,,,,,,,,,,,,,,,,                                
                         ,,,,,,,,,,,,,,,,,,,,,,,,,.     .****.                  
                       ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                            
                ****  ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,                           
                     ,,,,,,,,,,@@,,,,,,,.@(,,,,,,,,,,, ,**,                     
        ,**********, ,,,,,,,,,,,,,,,,,,,,,,*,,,,,,,,,,                          
                     ,,,,,,,,,,,,,,.@%,,,,,,,,,,,,,,,.                          
                   ** ,,,,,,,,,,,,,,,,,,,,,,,,,,,,,,, **                        
                       .,,,,,,,,,,,,,,,,,,,,,,,,,,,     .***.                   
                     **, .,,,,,,,,,,,,,,,,,,,,,,,            **                 
                  ,*/    .. .,,,,,,,,,,,,,,,,,     **,                          
                **     **,            .      *                                  
                               .*.     **     *,                                
                              **       **      *,                               
                             **                 *                               
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                
                                                                                """);
    pictures.add("""
                                                                                
                                             ./%%%%%%%%%%#                      
                                         ,#        ,%%%%%%%%%#                  
                                         .     .  ..    %%%%%(%%#               
                                      .               ..  %%%%%%%%#             
                                      . .........,      .. /%%%%%%%%            
                                     *,.   ..   ....,   ..  %%%%%%%%            
                                     ..,/&,... .,....,. .,../%%%%%%(            
      ,,,,*                    . . ..    ..,. ,......,,..,..(%%%%%%/            
      (,..,,,,,,,,,          .   ...     .          . ..,,,,%%%%%%%#            
      ,,.,,.,...   .         .       .#    .,.......,..,*,,%   %%%%%            
  ,,,..,,,,,,..,,,...  .,             .####(/.       .,,,.       %%%(           
  (,,,,,.,,......,,.  .&%%%%            ..           ..,*&&&        ,  ,        
       ,,...,,,,,,,,.&%%%%%%..                      ..,*%%%%%&                  
        ,,,,(      &&&%%%%%%%,...             .   ..,%%%%%%%%%%&                
         ,            %%%%%%%%#,,,,...   ........,*%%%%%%#%%%%%%&               
                          %%%%%%%%%%/ ,,,%%%%%%%%%%%%%%%%%#%%%%%%/              
                                 %%%   .,%%%%%%%%%%%%%%%&%#%%%%%%&              
                                 %%% . .,%%%%%%%%%%%%%&&&(%%%%%%%#              
                                %&&/&&&&*&&&&%%&&&&&&&&&%%%%%%%%&               
                                %%%*////(&&&&&&&&@@&%%%#.     .(&               
                               ,,%%. . .*%%%%%%%%%%%%%%% ..    .                
                                    ..    .............,                        
                                  #%&&&&&%%(/**/(%%%%%&&.  ,.                   
                                  %%%%%%%%%&%%%%%%%%%%&%                        
                                 %%%%%%%%%&. %%%%%%%%%%&                        
                                 %%%%%%%%&    %%%%%%%%%&                        
                                %%%%%%%%&.    #%%%%%%%&&                        
                                ,       .      .      ..                        
                                 %#%%&%&(       &%%%%&&                         
                                 &###&&&*       &###&&&                         
                               %#####%%&(     &#####&%&,                        
                         ############&&&&/##########&&&&                        
                         #####%%#### %%*#&&&&&&%%## %%                          """);
    pictures.add("""
                                                &                               
    ((/,(*/(((((((((((                 *@/@.   @                                
    ,((((((((((((((((                @ @    ,@@@@@@.                            
                                    &                   .@    (@                
                                #%                               *@             
                              &                     @   %   *       ,@          
                      /%          @  &             %    (   //%   ,  # *@       
                    .@       (  @  @.             .          @//          %@    
                   @           .&        #        % &    @   @/@   @        @   
                 @.    (           @(   @ ,        @&(@@..    @ @  /       (@   
               @  *    @    .     @ &.... %&       *%@@@(. .  /(%        . @    
             @         &    @     & .@@@#.          #(          @@  .    @*     
           @&          .    @&     @.@@@@/# &@     .**,         @*@ &  @,       
           @@               @@              &***////@%     @@  @%  @ .          
             @          .  & @                @&@##@      @   @                 
              ,@ &         @ @      @ (           &         @                   
                 ,@/      @    @@        @/    &@@@@@@@%  %                     
                       ,@          *@@ *   .@**../   @@  @                      
                                 @   ,/@(@    @      &  #/.@                    
                                @ @        @@   /   ,&  @  ,                    
                              @     /@       #@@(,*%@@@/   @                    
                            &           ./@@. /&@ &@/.@@/  .#                   
                          *@                  .%      *     @                   
                         @                    @#    ,*      @                   
       .@%,*@@/        %&                      #(#  @    % %                    
           @@   %     @                   @             ,  @                    
             & & @   @    .,             @@           @    @                    
             @   @ @      ..          ( #           @      @                    
            &   . @      @ @(         (@          /@   (   .                    
            #   @         @(@         @/        ,@/    (    /                   
            @  /           @/         ./      @@@           @                   
            &              @/@         @*  @@/  .@                              
             @*            . @          @%/     @ @          @                  
              /         (@@@@.           @  (,@%%@#@          @                 
               @    *         ,        &@&@&@@     (         *@#,/@@@           
               .           #  .                @    @             (   @         
                @%         @                  *@*  .@%               %@         
                              @         (  .   ,      @*      @   @  /@         
                                   (@@@@@@&,                                    """);

    int i = 0;
    posts.add(blogPost(
        "Ein schönes Häuschen🏠",
        "Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.",
        pictures[i++]));
    posts.add(blogPost(
        "Einzug unseres Papagei 🦜",
        "Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut",
        pictures[i++]));
    posts.add(blogPost(
        "Unser wunderschöner Fisch 🐟",
        "Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aliquam sit. ",
        pictures[i++]));
    posts.add(blogPost(
        "Der letzte Strandurlaub 🐟",
        "Sed nec auctor felis. Nam rutrum fringilla tellus vitae auctor. Nunc tempus placerat velit, ut. ",
        pictures[i++]));
    posts.add(blogPost(
        "Unser neues Telefon 📱",
        "Vestibulum mi est, volutpat at ipsum accumsan, sagittis pulvinar risus. Integer fermentum eros ac efficitur vestibulum. Vivamus et urna in arcu ultricies ornare. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Nam quis erat ultricies, consectetur eros et, commodo mi. Nulla et vestibulum felis, sit amet tincidunt purus. Mauris suscipit ultricies convallis. Nulla semper vulputate. ",
        pictures[i++]));
    posts.add(blogPost(
        "Ein richtig leckeres Essen 🥗",
        "Curabitur non aliquet nulla, non feugiat enim. Nulla laoreet mauris ex, non egestas ligula posuere sit amet. Curabitur sagittis ex vel risus pulvinar, sit amet imperdiet nisi sagittis. Vestibulum ut risus ante. Sed nec tellus augue. Nulla augue dui, ultrices eu rhoncus et, fringilla et tellus. Vivamus ac viverra ligula. Curabitur enim arcu, ultrices a pretium eu, faucibus eget nisi. ",
        pictures[i++]));
    posts.add(blogPost(
        "Hallo Bulgarien! Sommeurlaub 🌅",
        "Maecenas vitae consequat augue. Vivamus egestas neque in dictum pellentesque. Proin odio purus, iaculis ut nisi quis, dignissim convallis enim. Donec faucibus est at mi laoreet, sed vulputate lorem vulputate. In in facilisis mi. Donec in finibus sapien, id dictum dui. Integer eget urna vitae elit feugiat mattis id sit amet purus. Aliquam semper nec mi nec bibendum. Aenean luctus. ",
        pictures[i++]));
    posts.add(blogPost(
        "Was hat den der Weihnachtsman so mitgebracht? ",
        "Sed lobortis nibh eu dui vulputate, vitae porttitor velit gravida. Vestibulum mattis ipsum vel ultrices tristique. Suspendisse cursus accumsan tristique. Donec in sagittis orci. Fusce tortor neque, cursus at mollis sit amet, pharetra sed nunc. Phasellus ullamcorper orci maximus, blandit sem eu, dignissim ante. In non feugiat est. Praesent ullamcorper, arcu in ornare iaculis, leo mi semper nulla, eu lacinia lectus massa sed nisl. Cras lectus felis, sollicitudin ut tristique at, aliquet at purus. Nullam ac ligula sem. Aenean dignissim enim massa, sit amet blandit mi dapibus vel. Sed odio erat, finibus vitae ornare et, tincidunt eget lacus. Nulla hendrerit. ",
        pictures[i++]));
    posts.add(blogPost(
        "Ein neues Wau Wau",
        "Aliquam dictum ultrices molestie. Vivamus fermentum risus nisl, in tempor erat maximus nec. Curabitur euismod metus ac turpis dictum, elementum pellentesque felis sagittis. Aenean faucibus eget magna in hendrerit. Aliquam non lectus lacinia, sollicitudin ligula sed, lacinia felis. Praesent varius malesuada lacus sit amet cursus. Suspendisse odio massa, finibus eget risus bibendum, eleifend varius erat. Integer laoreet, sapien ut laoreet congue, nunc elit iaculis justo, at aliquam leo massa eget ante. Morbi id ex sit amet massa sagittis vehicula quis. ",
        pictures[i++]));
  }

  void printUnseenPost() {
    for (var post in posts) {
      if (!post.readed) {
        post.printAll();
        break;
      }
    }
  }

  int unseenPosts() {
    int i = 0;
    for (var post in posts) {
      if (!post.readed) {
        i++;
      }
    }
    return i;
  }
}
