ProgramNode(0...215)(
  ScopeNode(0...0)([]),
  StatementsNode(0...215)(
    [BeginNode(0...16)(
       KEYWORD_BEGIN(0...5)("begin"),
       nil,
       RescueNode(6...12)(
         KEYWORD_RESCUE(6...12)("rescue"),
         [],
         nil,
         nil,
         nil,
         nil
       ),
       nil,
       nil,
       KEYWORD_END(13...16)("end")
     ),
     BeginNode(18...39)(
       KEYWORD_BEGIN(18...23)("begin"),
       nil,
       RescueNode(24...30)(
         KEYWORD_RESCUE(24...30)("rescue"),
         [],
         nil,
         nil,
         nil,
         nil
       ),
       ElseNode(31...39)(
         KEYWORD_ELSE(31...35)("else"),
         nil,
         KEYWORD_END(36...39)("end")
       ),
       nil,
       KEYWORD_END(36...39)("end")
     ),
     BeginNode(41...54)(
       KEYWORD_BEGIN(41...46)("begin"),
       StatementsNode(49...50)(
         [CallNode(49...50)(
            nil,
            nil,
            IDENTIFIER(49...50)("a"),
            nil,
            nil,
            nil,
            nil,
            "a"
          )]
       ),
       nil,
       nil,
       nil,
       KEYWORD_END(51...54)("end")
     ),
     BeginNode(56...80)(
       KEYWORD_BEGIN(56...61)("begin"),
       StatementsNode(64...65)(
         [CallNode(64...65)(
            nil,
            nil,
            IDENTIFIER(64...65)("a"),
            nil,
            nil,
            nil,
            nil,
            "a"
          )]
       ),
       RescueNode(66...76)(
         KEYWORD_RESCUE(66...72)("rescue"),
         [],
         nil,
         nil,
         StatementsNode(75...76)(
           [CallNode(75...76)(
              nil,
              nil,
              IDENTIFIER(75...76)("b"),
              nil,
              nil,
              nil,
              nil,
              "b"
            )]
         ),
         nil
       ),
       nil,
       nil,
       KEYWORD_END(77...80)("end")
     ),
     BeginNode(82...110)(
       KEYWORD_BEGIN(82...87)("begin"),
       StatementsNode(90...95)(
         [CallNode(90...91)(
            nil,
            nil,
            IDENTIFIER(90...91)("a"),
            nil,
            nil,
            nil,
            nil,
            "a"
          ),
          CallNode(94...95)(
            nil,
            nil,
            IDENTIFIER(94...95)("b"),
            nil,
            nil,
            nil,
            nil,
            "b"
          )]
       ),
       RescueNode(96...106)(
         KEYWORD_RESCUE(96...102)("rescue"),
         [],
         nil,
         nil,
         StatementsNode(105...106)(
           [CallNode(105...106)(
              nil,
              nil,
              IDENTIFIER(105...106)("b"),
              nil,
              nil,
              nil,
              nil,
              "b"
            )]
         ),
         nil
       ),
       nil,
       nil,
       KEYWORD_END(107...110)("end")
     ),
     BeginNode(112...135)(
       KEYWORD_BEGIN(112...117)("begin"),
       nil,
       RescueNode(118...124)(
         KEYWORD_RESCUE(118...124)("rescue"),
         [ConstantReadNode(125...126)()],
         nil,
         nil,
         nil,
         nil
       ),
       ElseNode(127...135)(
         KEYWORD_ELSE(127...131)("else"),
         nil,
         KEYWORD_END(132...135)("end")
       ),
       nil,
       KEYWORD_END(132...135)("end")
     ),
     BeginNode(137...163)(
       KEYWORD_BEGIN(137...142)("begin"),
       nil,
       RescueNode(144...150)(
         KEYWORD_RESCUE(144...150)("rescue"),
         [ConstantReadNode(151...152)()],
         nil,
         nil,
         nil,
         nil
       ),
       ElseNode(154...163)(
         KEYWORD_ELSE(154...158)("else"),
         nil,
         KEYWORD_END(160...163)("end")
       ),
       nil,
       KEYWORD_END(160...163)("end")
     ),
     BeginNode(165...215)(
       KEYWORD_BEGIN(165...170)("begin"),
       StatementsNode(173...174)(
         [CallNode(173...174)(
            nil,
            nil,
            IDENTIFIER(173...174)("a"),
            nil,
            nil,
            nil,
            nil,
            "a"
          )]
       ),
       RescueNode(175...200)(
         KEYWORD_RESCUE(175...181)("rescue"),
         [ConstantReadNode(182...183)()],
         nil,
         nil,
         StatementsNode(186...187)(
           [CallNode(186...187)(
              nil,
              nil,
              IDENTIFIER(186...187)("b"),
              nil,
              nil,
              nil,
              nil,
              "b"
            )]
         ),
         RescueNode(188...200)(
           KEYWORD_RESCUE(188...194)("rescue"),
           [ConstantReadNode(195...196)()],
           nil,
           nil,
           StatementsNode(199...200)(
             [CallNode(199...200)(
                nil,
                nil,
                IDENTIFIER(199...200)("c"),
                nil,
                nil,
                nil,
                nil,
                "c"
              )]
           ),
           nil
         )
       ),
       nil,
       EnsureNode(201...215)(
         KEYWORD_ENSURE(201...207)("ensure"),
         StatementsNode(210...211)(
           [CallNode(210...211)(
              nil,
              nil,
              IDENTIFIER(210...211)("d"),
              nil,
              nil,
              nil,
              nil,
              "d"
            )]
         ),
         KEYWORD_END(212...215)("end")
       ),
       KEYWORD_END(212...215)("end")
     )]
  )
)
