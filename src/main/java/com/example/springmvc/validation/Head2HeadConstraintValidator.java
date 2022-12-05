package com.example.springmvc.validation;

import com.example.springmvc.HeadToHead;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class Head2HeadConstraintValidator implements ConstraintValidator<HeadToHead,String> {
    @Override
    public void initialize(HeadToHead headToHeadScore) {

    }

    @Override
    public boolean isValid(String headToHeadScore, ConstraintValidatorContext context) {
        boolean isValid = headToHeadScore.matches("[0-9]{1,2}-[0-9]{1,2}");
        return isValid;
    }
}
