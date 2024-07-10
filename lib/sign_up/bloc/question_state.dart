import 'package:equatable/equatable.dart';
import 'package:loginpage/sign_up/models/question.dart';

abstract class QuestionState extends Equatable {
  const QuestionState();

  @override
  List<Object> get props => [];
}

class QuestionsLoading extends QuestionState {}

class QuestionsLoaded extends QuestionState {
  final List<Question> questions;
  final Map<int, String?> selectedAnswers;
  final int openSectionIndex;
  final int currentIndex;

  const QuestionsLoaded(this.questions, this.selectedAnswers,
      this.openSectionIndex, this.currentIndex);

  @override
  List<Object> get props =>
      [questions, selectedAnswers, openSectionIndex, currentIndex];
}

class QuestionsError extends QuestionState {
  final String message;

  const QuestionsError(this.message);

  @override
  List<Object> get props => [message];
}