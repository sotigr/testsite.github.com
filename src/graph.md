
 
```mermaid
graph TD; 
    Questionair_Renderer-->inData-->Question;
    Questionair_Renderer-->questionnaireInstance-->Question;
    Questionair_Renderer-->onSaveData-->Question;  
    Question-->isValid-->has_onSaveData-->Questionair_Renderer;
    Questionair_Renderer-->Paginator;
    Question-->Paginator;
```

hhhhhhhh

```mermaid
journey
    title My working day
    section Go to work
      Make tea: 5: Me
      Go upstairs: 3: Me
      Do work: 1: Me, Cat
    section Go home
      Go downstairs: 5: Me
      Sit down: 5: Me
 ```
