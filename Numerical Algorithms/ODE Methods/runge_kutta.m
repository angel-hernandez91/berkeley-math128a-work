function w = runge_kutta(a, b, n, t0)
    h = (b - a)/n;
    t = a;
    w = t0;
    
    f = @(t,w) 1 + (t-w)^2; %some inline function
    
    for i = 1:n
        k1 = h*f(t,w);
        k2 = h*f(t +h/2, w +k1/2);
        k3 = h*f(t +h/2, w +k2/2);
        k4 = h*f(t + h, w + k3);
        
        w = w +(k1 +2*k2 +2*k3 +k4)/6
        t = a + i*h
    end
    
end
   