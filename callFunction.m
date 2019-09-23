function [ func ] = callFunction( funcNum )



funcs(1).name = 'stepint';              funcs(1).lowerlimit = -5.12;       funcs(1).upperlimit = 5.12;       funcs(1).dim = 5;
funcs(2).name = 'step';                 funcs(2).lowerlimit = -100;        funcs(2).upperlimit = 100;        funcs(2).dim = 30;
funcs(3).name = 'sphere';               funcs(3).lowerlimit = -100;        funcs(3).upperlimit = 100;        funcs(3).dim = 30;
funcs(4).name = 'sumsquares';           funcs(4).lowerlimit = -10;         funcs(4).upperlimit = 10;         funcs(4).dim = 30;
funcs(5).name = 'quartic';              funcs(5).lowerlimit = -1.28;       funcs(5).upperlimit = 1.28;       funcs(5).dim = 30;
funcs(6).name = 'beale';                funcs(6).lowerlimit = -4.5;        funcs(6).upperlimit = 4.5;        funcs(6).dim = 5;
funcs(7).name = 'easom';                funcs(7).lowerlimit = -100;        funcs(7).upperlimit = 100;        funcs(7).dim = 2;
funcs(8).name = 'matyas';               funcs(8).lowerlimit = -10;         funcs(8).upperlimit = 10;         funcs(8).dim = 2;
funcs(9).name = 'colville';             funcs(9).lowerlimit = -10;         funcs(9).upperlimit = 10;         funcs(9).dim = 4;
funcs(10).name = 'trid6';               funcs(10).lowerlimit = -36;        funcs(10).upperlimit = 36;        funcs(10).dim = 6;
funcs(11).name = 'trid10';              funcs(11).lowerlimit = -100;       funcs(11).upperlimit = 100;       funcs(11).dim = 10;
funcs(12).name = 'zakharov';            funcs(12).lowerlimit = -5;         funcs(12).upperlimit = 10;        funcs(12).dim = 10;
funcs(13).name = 'powell';              funcs(13).lowerlimit = -4;         funcs(13).upperlimit = 5;         funcs(13).dim = 24;
funcs(14).name = 'schwefel222';         funcs(14).lowerlimit = -10;        funcs(14).upperlimit = 10;        funcs(14).dim = 30;
funcs(15).name = 'schwefel12';          funcs(15).lowerlimit = -100;       funcs(15).upperlimit = 100;       funcs(15).dim = 30;
funcs(16).name = 'rosenbrock';          funcs(16).lowerlimit = -30;        funcs(16).upperlimit = 30;        funcs(16).dim = 30;
funcs(17).name = 'dixonprice';          funcs(17).lowerlimit = -10;        funcs(17).upperlimit = 10;        funcs(17).dim = 30;
funcs(18).name = 'foxholes';            funcs(18).lowerlimit = -65536;     funcs(18).upperlimit = 65536;     funcs(18).dim = 2;
funcs(19).name = 'branin';              funcs(19).lowerlimit = -5;         funcs(19).upperlimit = 10;        funcs(19).dim = 2;
funcs(20).name = 'bohachevsky1';        funcs(20).lowerlimit = -100;       funcs(20).upperlimit = 100;       funcs(20).dim = 2;
funcs(21).name = 'booth';               funcs(21).lowerlimit = -10;        funcs(21).upperlimit = 10;        funcs(21).dim = 2;
funcs(22).name = 'rastrigin';           funcs(22).lowerlimit = -5.12;      funcs(22).upperlimit = 5.12;      funcs(22).dim = 30;
funcs(23).name = 'schwefel';            funcs(23).lowerlimit = -500;       funcs(23).upperlimit = 500;       funcs(23).dim = 30;
funcs(24).name = 'michalewicz2';        funcs(24).lowerlimit = 0;          funcs(24).upperlimit = pi;        funcs(24).dim = 2;
funcs(25).name = 'michalewicz5';        funcs(25).lowerlimit = 0;          funcs(25).upperlimit = pi;        funcs(25).dim = 5;
funcs(26).name = 'michalewicz10';       funcs(26).lowerlimit = 0;          funcs(26).upperlimit = pi;        funcs(26).dim = 10;
funcs(27).name = 'schaffer';            funcs(27).lowerlimit = -100;       funcs(27).upperlimit = 100;       funcs(27).dim = 2;
funcs(28).name = 'sixhumpcamelback';    funcs(28).lowerlimit = -5;         funcs(28).upperlimit = 5;         funcs(28).dim = 2;
funcs(29).name = 'bohachevsky2';        funcs(29).lowerlimit = -100;       funcs(29).upperlimit = 100;       funcs(29).dim = 2;
funcs(30).name = 'bohachevsky3';        funcs(30).lowerlimit = -100;       funcs(30).upperlimit = 100;       funcs(30).dim = 2;
funcs(31).name = 'shubert';             funcs(31).lowerlimit = -10;        funcs(31).upperlimit = 10;        funcs(31).dim = 2;
funcs(32).name = 'goldsteinprice';      funcs(32).lowerlimit = -2;         funcs(32).upperlimit = 2;         funcs(32).dim = 2;
funcs(33).name = 'kowalik';             funcs(33).lowerlimit = -5;         funcs(33).upperlimit = 5;         funcs(33).dim = 4;
funcs(34).name = 'shekel5';             funcs(34).lowerlimit = 0;          funcs(34).upperlimit = 10;        funcs(34).dim = 4;
funcs(35).name = 'shekel7';             funcs(35).lowerlimit = 0;          funcs(35).upperlimit = 10;        funcs(35).dim = 4;
funcs(36).name = 'shekel10';            funcs(36).lowerlimit = 0;          funcs(36).upperlimit = 10;        funcs(36).dim = 4;
funcs(37).name = 'perm';                funcs(37).lowerlimit = -4;         funcs(37).upperlimit = 4;         funcs(37).dim = 4;
funcs(38).name = 'powersum';            funcs(38).lowerlimit = 0;          funcs(38).upperlimit = 4;         funcs(38).dim = 4;
funcs(39).name = 'hartman3';            funcs(39).lowerlimit = 0;          funcs(39).upperlimit = 1;         funcs(39).dim = 3;
funcs(40).name = 'hartman6';            funcs(40).lowerlimit = 0;          funcs(40).upperlimit = 1;         funcs(40).dim = 6;
funcs(41).name = 'griewank';            funcs(41).lowerlimit = -600;       funcs(41).upperlimit = 600;       funcs(41).dim = 30;
funcs(42).name = 'ackley';              funcs(42).lowerlimit = -32;        funcs(42).upperlimit = 32;        funcs(42).dim = 30;
funcs(43).name = 'penalized';           funcs(43).lowerlimit = -50;        funcs(43).upperlimit = 50;        funcs(43).dim = 30;
funcs(44).name = 'penalized2';          funcs(44).lowerlimit = -50;        funcs(44).upperlimit = 50;        funcs(44).dim = 30;
funcs(45).name = 'langerman2';          funcs(45).lowerlimit = 0;          funcs(45).upperlimit = 10;        funcs(45).dim = 2;
funcs(46).name = 'langerman5';          funcs(46).lowerlimit = 0;          funcs(46).upperlimit = 10;        funcs(46).dim = 5;
funcs(47).name = 'langerman10';         funcs(47).lowerlimit = 0;          funcs(47).upperlimit = 10;        funcs(47).dim = 10;
funcs(48).name = 'fletcherpowell2';     funcs(48).lowerlimit = -pi;        funcs(48).upperlimit = pi;        funcs(48).dim = 2;
funcs(49).name = 'fletcherpowell5';     funcs(49).lowerlimit = -pi;        funcs(49).upperlimit = pi;        funcs(49).dim = 5;
funcs(50).name = 'fletcherpowell10';    funcs(50).lowerlimit = -pi;        funcs(50).upperlimit = pi;        funcs(50).dim = 10;


func = funcs(:,funcNum);

end

